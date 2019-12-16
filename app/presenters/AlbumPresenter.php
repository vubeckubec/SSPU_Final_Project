<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\AlbumManager;
use Nette\Security\Identity;
use Nette\Application\Responses\JsonResponse;   

class AlbumPresenter extends Nette\Application\UI\Presenter
{
    /** @var Nette\Database\Context */
    
    private $albumManager;
    
    public function __construct(AlbumManager $albumManager) {
        $this->albumManager = $albumManager;
        $this->setLayout('empty');
    }
 
    public function renderDefault($album_id,$sortmode) {
        if(!$sortmode){
            $sortmode = 'number ASC';
        }
        if($this->albumManager->album_is_valid($album_id)){
            $this->template->album_id = $album_id;
            $this->template->album_name = $this->albumManager->albumname_readByID($album_id);     
            $this->template->songs_list = $this->albumManager->readAll($album_id,$this->user->getId(),$sortmode);
            $this->template->thumb_url = $this->link('Albums:thumbnail',['album_id'=>$album_id]);
            $this->template->fav_list = $this->albumManager->getUsersFavoritePlaylist($this->user->getId());
        }else{
            $this->template->album_id = $album_id;
            $this->template->album_name = "Invalid album ID.";     
            $this->template->songs_list = array();    
        } 
    }

    public function actionLikeChange($song_id,$favorite,$fav_list) {
        if ($this->isAjax()){
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
    }
}