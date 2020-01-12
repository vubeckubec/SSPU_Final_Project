<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\AlbumManager;
use Nette\Security\Identity;
use Nette\Application\Responses\JsonResponse;  
require_once('myRenderers.php');

class AlbumPresenter extends Nette\Application\UI\Presenter
{
    /** @var Nette\Database\Context */
    
    private $albumManager;
    
    public function __construct(AlbumManager $albumManager) {
        $this->albumManager = $albumManager;
        $this->setLayout('empty_layout');
    }
 
    public function renderDefault($album_id) {
        $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();
        if($this->albumManager->album_is_valid($album_id)){
            $this->template->album_id = $album_id;
            $this->template->album_info = $this->albumManager->albuminfo_readByID($album_id);
            $this->template->songs_list = array();     
            $temp_songs_list = $this->albumManager->readAlbumSongsWithLikes($album_id,$this->user->getId());
            $userInfo = $this->albumManager->username_readById($this->user->getId());
            preRenderSongs($this,$album_id,$temp_songs_list,$this->template->songs_list,$userInfo);
            $this->template->thumb_url = $this->link('Albums:thumbnail',['album_id'=>$album_id]);
            $this->template->fav_list = $this->albumManager->getUsersFavoritePlaylist($this->user->getId());
        }else{
            $this->template->album_id = $album_id;
            $this->template->album_name = "Invalid album ID.";     
            $this->template->songs_list = array();    
        } 
    }

    public function actionLikeChange($song_id,$favorite,$fav_list) {
        //$this->sendResponse(new JsonResponse(['klic' => 'hodnota']));
        //favorite = 0 means we want to insert new favorite
        //favorite = 1 means we want to delete existing
        if($favorite){
            $res = $this->albumManager->deleteLike($fav_list,$song_id);
        }else{
            $res = $this->albumManager->insertLike($fav_list,$song_id);
        }
        $this->sendResponse(new JsonResponse(['response' => $res]));
    }

    public function actionSave($song_id, $song_name) {
        $this->albumManager->updateSongName($song_id,$song_name);
        $results = array();
        $results['song_name'] = $song_name;
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($results));
    } 

    public function actionPlaylistJson($song_id) {
        $res = $this->albumManager->getAllUsersPlaylists($this->user->getId());
        $json = array();
        $json['playlists'] = array();
        $json['addQueueUrl'] = $this->link('Queue:default',['song_id'=>$song_id]);
        foreach($res as $row) {
            $json_row = array();
            $json_row['playlist_name'] = $row->name;
            $json_row['playlist_url'] = $this->link('Album:InsertToPlaylist',['playlist_id'=>$row->playlist_idplaylist,'song_id'=>$song_id]);
            array_push($json['playlists'],$json_row);
        }
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($json));
    }

    public function actionInsertToPlaylist($playlist_id,$song_id) {
        $this->albumManager->insertLike($playlist_id,$song_id);
        $results = array();
        $results['res'] = 1;
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($results));
    }
}