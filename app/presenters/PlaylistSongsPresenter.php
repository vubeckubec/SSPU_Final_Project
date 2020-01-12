<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\PlaylistSongsManager;
use Nette\Security\Identity;
use Nette\Application\Responses\JsonResponse;  
require_once('myRenderers.php');

class PlaylistSongsPresenter extends Nette\Application\UI\Presenter
{
    /** @var Nette\Database\Context */
    
    private $playlistSongsManager;
    
    public function __construct(PlaylistSongsManager $playlistSongsManager) {
        $this->playlistSongsManager = $playlistSongsManager;
        $this->setLayout('empty_layout');
    }
 
    public function renderDefault($playlist_id) {
        $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();
        $this->template->playlist_id = $playlist_id;
        $this->template->playlist_name = $this->playlistSongsManager->playlistName_readByID($playlist_id);
        $this->template->playlist_owner = $this->playlistSongsManager->username_readById($playlist_id);
        $playlist_owner = $this->playlistSongsManager->username_readById($playlist_id);
        $this->template->playlistSongs_list = array();     
        $temp_playlistSongs_list = $this->playlistSongsManager->readPlaylistSongs($playlist_id,$this->user->getId());
        $this->template->fav_list = $this->playlistSongsManager->getUsersFavoritePlaylist($this->user->getId());
        preRenderSongsForPlaylist($this,$playlist_id,$temp_playlistSongs_list,$this->template->playlistSongs_list,$playlist_owner);
    }

    public function actionLikeChange($song_id,$favorite,$fav_list) {
        //$this->sendResponse(new JsonResponse(['klic' => 'hodnota']));
        //favorite = 0 means we want to insert new favorite
        //favorite = 1 means we want to delete existing
        if($favorite){
            $res = $this->playlistSongsManager->deleteLike($fav_list,$song_id);
        }else{
            $res = $this->playlistSongsManager->insertLike($fav_list,$song_id);
        }
        $this->sendResponse(new JsonResponse(['response' => $res]));
    }

    public function actionDeleteSong($song_id,$playlist_id) {
        $this->playlistSongsManager->deleteSong($song_id,$playlist_id);
        $results = array();
        $results['response'] = 1; 
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($results));
    }

}