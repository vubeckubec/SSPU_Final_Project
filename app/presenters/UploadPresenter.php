<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\UploadManager;
use Nette\Security\Identity;
use Nette\Application\Responses\JsonResponse;

class UploadPresenter extends Nette\Application\UI\Presenter
{
    /** @var Nette\Database\Context */
    
    private $uploadManager;
    
    public function __construct(UploadManager $uploadManager) {
        $this->uploadManager = $uploadManager;
        $this->setLayout('empty_layout');
    }
 
    public function renderDefault() {
        $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();
        $upload_path = realpath(__DIR__ . "/../upload");
        $folder_count = 0;
        if (is_dir($upload_path)){
            if ($dh = opendir($upload_path)){
                while (($file = readdir($dh)) !== false){
                    if($file == "." || $file == "..") {
                        continue;   
                    }
                    $json_path = $upload_path . DIRECTORY_SEPARATOR . $file . DIRECTORY_SEPARATOR . "album.json";
                    if(file_exists($json_path)){
                        $folder_count++;
                    }
                }
            }   
            closedir($dh);
        }
        $this->template->folder_count = $folder_count;
    }

    public function actionUploadOneAlbum($cur_upload,$all_upload) {
        //finding first non uploaded album
        $upload_path = realpath(__DIR__ . "/../upload");
        if (is_dir($upload_path)){
            if ($dh = opendir($upload_path)){
                while (($file = readdir($dh)) !== false){
                    if($file == "." || $file == "..") {
                        continue;   
                    }
                    $json_path = $upload_path . DIRECTORY_SEPARATOR . $file . DIRECTORY_SEPARATOR . "album.json";
                    if(file_exists($json_path)){
                        $folder_path = $upload_path . DIRECTORY_SEPARATOR . $file;
                        $folder_name = $file;
                        $folder_json_path = $folder_path . DIRECTORY_SEPARATOR . "album.json";
                        break;
                    }
                }
            }   
            closedir($dh);
        }
        
        if(isset($folder_path)) {
            //parsing JSON
            $jsonFileContent = file_get_contents($folder_json_path);
            $json_array = json_decode($jsonFileContent, true);
            if(!$this->isAlbumAlreadyPresent($json_array)) {
                $this->moveUploadedAlbum($json_array,$folder_path);
                $this->insertNewAlbumToDb($json_array);
            }
            $this->removeUploadedAlbum($json_array,$folder_path);
        }
        $results = array();
        $results['cur'] = $cur_upload + 1;
        $results['all'] = $all_upload;
        if(isset($folder_name)){
            $results['name'] = $folder_name;
        }else{
            $results['name'] = "";
        }
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($results));    
    }

    public function safeMove($src,$dst) {
        $path_parts = pathinfo($dst);
        if(!is_dir($path_parts['dirname'])){
            mkdir($path_parts['dirname'],0755,true);
        }
        if(file_exists($dst)) {
            if(file_exists($src)){
                unlink($src);
            }
        }else{
            rename($src,$dst);
        }
    }

    public function isAlbumAlreadyPresent($json_array) {
        //getting artist from parsed JSON
        $artist_name = $json_array['artist'];
        $artist_id = $this->uploadManager->getArtistId($artist_name);
        //checking if artist exists
        if(isset($artist_id)) {
            //if artist exists check the album we are parsing and it's existance
            $album_name = $json_array['album_name'];
            $album_exists = $this->uploadManager->doesAlbumExist($album_name, $artist_id);
            //if album exists delete right away cause we don't want duplicate inserts 
            if($album_exists == 1){
                //album is already present so we deleted it instead of inserting
                return 1;       
            } 
        }
        //album is sent back for further operations
        return 0;   
    }

    public function removeUploadedAlbum($json_array,$folder_path) {
        $folder_json_path = $folder_path . DIRECTORY_SEPARATOR . "album.json";
        foreach($json_array['songs'] as $song) {
            $mp3_del_path = $folder_path . DIRECTORY_SEPARATOR . $song['src'];
            if(file_exists($mp3_del_path)){
                unlink($mp3_del_path);
            }
        }
        if(array_key_exists('album_thumb_src',$json_array)){
            $tn_del_path = $folder_path . DIRECTORY_SEPARATOR . $json_array['album_thumb_src'];
            if(file_exists($tn_del_path)){
                unlink($tn_del_path); 
            }
        }
        if(file_exists($folder_json_path)){
            unlink($folder_json_path);
        } 
        rmdir($folder_path);
    }

    public function moveUploadedAlbum($json_array,$folder_path) {
        //copying album thumbnail
        if(array_key_exists('album_thumb_src',$json_array) && array_key_exists('album_thumb_dst',$json_array)) {
            $tn_old_path = $folder_path . DIRECTORY_SEPARATOR . $json_array['album_thumb_src'];
            $dest_folder_path = realpath(__DIR__ . "/../writable/album_tns");
            $tn_new_path = $dest_folder_path . DIRECTORY_SEPARATOR . $json_array['album_thumb_dst'];
            $this->safeMove($tn_old_path,$tn_new_path); 
        } 
        
        //copying MP3 files
        foreach($json_array['songs'] as $song) {
            $mp3_old_path = $folder_path . DIRECTORY_SEPARATOR . $song['src'];
            $dest_folder_path = realpath(__DIR__ . "/../writable/MP3s");
            $mp3_new_path = $dest_folder_path . DIRECTORY_SEPARATOR . $song['dest'];
            $this->safeMove($mp3_old_path,$mp3_new_path);
        }
    }

    public function insertNewAlbumToDb($json_array) {
        $artist_name = $json_array['artist'];
        $artist_id = $this->uploadManager->getArtistId($artist_name);
        if(!isset($artist_id)) {
            $this->uploadManager->uploadArtist($artist_name);
            $artist_id = $this->uploadManager->getLastInsertId();
        }
        $album_name = $json_array['album_name'];
        if(array_key_exists('album_thumb_dst',$json_array)){
            $this->uploadManager->uploadAlbum($album_name,$json_array['album_year'],$json_array['album_thumb_dst']);
        }else{
            $this->uploadManager->uploadAlbum($album_name,$json_array['album_year'],"");
        }
        $album_id = $this->uploadManager->getLastInsertId();
        $this->uploadManager->uploadArtistAlbum($artist_id,$album_id);
        foreach($json_array['songs'] as $song) {
            $this->uploadManager->uploadSong($album_id,$song['song_order'],$song['name'],$song['time'],$song['length'],$song['dest']);
        }
    }
}
