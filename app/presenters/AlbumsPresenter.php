<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\AlbumsManager;
use Nette\Security\Identity;
use Nette\Application\Responses\JsonResponse;

class AlbumsPresenter extends Nette\Application\UI\Presenter {
    private $albumsManager;
    
    public function __construct(AlbumsManager $albumsManager) {
        $this->albumsManager = $albumsManager;
        $this->setLayout('empty_layout');
    }
 
    public function renderDefault($artist_id) {
        $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();
        if($this->albumsManager->artist_is_valid($artist_id)){
            $this->template->artist_id = $artist_id;    
            $this->template->artists = $this->albumsManager->artistname_readByID($artist_id);        
            $this->template->album_list_old = $this->albumsManager->readAlbumsWithLikes($artist_id,$this->user->getId());
            $userInfo = $this->albumsManager->username_readById($this->user->getId());
            $this->template->album_list_new = array();
            foreach($this->template->album_list_old as $album) {
                $thumb_url = $this->link('Albums:thumbnail',['album_id'=>$album->album_id]);
                $queue_url = $this->link('Queue:default',['album_id'=>$album->album_id]);
                $album_url = $this->link('Album:default',['album_id'=>$album->album_id]);
                $album_delete_url = $this->link('Albums:DeleteAlbum',['album_id'=>$album->album_id,'artist_id'=>$artist_id]);
                $new_album = new \stdClass();
                $album_string = "";
                $album_string .= "<div style=\"overflow-wrap: break-word;\"><a class=\"ajax_change\" href=\"$album_url\"><img src=\"$thumb_url\" height=\"\" width=\"\" style=\"display: block;margin-left: auto;margin-right: auto;\">";
                $album_string .= "<div style=\"display:block;text-align:center;\">$album->year - $album->name</a>";
                if($userInfo->role == "admin"){
                    $album_string .= "<div style=\"display:block;\"><span class=\"glyphicon glyphicon-play queue_fill\" aria-hidden=\"true\" href=\"$queue_url\"></span>
                    <span album_id=\"$album->album_id\" favorite=\"$album->favorite\" class=\"" . ($album->favorite ? "glyphicon glyphicon-heart": "glyphicon glyphicon-heart-empty") . "
                    favtoggle_album\" aria-hidden=\"true\"></span> <span class=\"glyphicon glyphicon-remove remove_album\" style=\"color:red;\" aria-hidden=\"true\" href=\"$album_delete_url\"></span></div></div></div>";  
                }else{
                    $album_string .= "<div style=\"display:block;\"><span class=\"glyphicon glyphicon-play queue_fill\" aria-hidden=\"true\" href=\"$queue_url\"></span>
                    <span album_id=\"$album->album_id\" favorite=\"$album->favorite\" class=\"" . ($album->favorite ? "glyphicon glyphicon-heart": "glyphicon glyphicon-heart-empty") . "
                    favtoggle_album\" aria-hidden=\"true\"></span></div></div></div>";
                }
                array_push($this->template->album_list_new,$album_string); 
            }
        }else{
            $this->template->artist_id = $artist_id; 
            $this->template->artists = new \stdClass();   
            $this->template->artists->name = "Invalid artist id.";        
            $this->template->album_list_new = array();
        }
    }

    public function actionLikeChange($album_id,$favorite) {
        //$this->sendResponse(new JsonResponse(['klic' => 'hodnota']));
        //favorite = 0 means we want to insert new favorite
        //favorite = 1 means we want to delete existing
        if($favorite){
            $res = $this->albumsManager->deleteLike($this->user->getId(),$album_id);
        }else{
            $res = $this->albumsManager->insertLike($this->user->getId(),$album_id);
        }
        $this->sendResponse(new JsonResponse(['response' => $res]));
    }
    
    public function renderThumbnail($album_id) {
		$album = $this->albumsManager->readByID($album_id);
        $file_path = realpath(__DIR__ . "/../writable/album_tns") . "\\" . strtr($album->pic_tn, '/', '\\');
        if(!is_file($file_path)){
            $file_path = realpath(__DIR__ . "/../writable/avatars") . "\\" . "blank-image.jpg";   
        }
		$httpResponse = $this->context->getByType('Nette\Http\Response');
		$httpResponse->setHeader('Content-type', 'image/jpeg');
		$httpResponse->setHeader('Content-Length', filesize($file_path));
		$httpResponse->setHeader('Content-Disposition', 'attachment; filename="' . basename($file_path) . '"');
		$httpResponse->setHeader('X-Pad', 'avoid browser bug');
		$httpResponse->setHeader('Cache-Control', 'no-cache');
		$httpResponse->setHeader('Content-Transfer-Encoding', 'binary');
		$httpResponse->setHeader('Accept-Ranges', 'bytes');
		$this->sendResponse(new Nette\Application\Responses\FileResponse($file_path));	
    }

    public function actionDeleteAlbum($album_id,$artist_id) {
        $res = $this->albumsManager->deleteAlbum($album_id,$artist_id);
        $url = $res ? $this->link('Artists:default') : $this->link('Albums:default',['artist_id'=>$artist_id]);
        $results = array();
        $results['url'] = $url;
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($results));
    }

}