<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\playlistsManager;
use Nette\Security\Identity;
use Nette\Application\Responses\JsonResponse;   

class PlaylistsPresenter extends Nette\Application\UI\Presenter
{
    /** @var Nette\Database\Context */
    
    private $playlistsManager;

    public function __construct(playlistsManager $playlistsManager) {
        $this->playlistsManager = $playlistsManager;
        $this->setLayout('empty');
    }
 
    public function renderDefault($user_id) {
        $this->template->user_id = $user_id;
        $this->template->playlists_list = $this->playlistsManager->readAll($user_id);
        $this->template->usernameIs = $this->playlistsManager->username_readById($user_id); 
    }

    public function actionDeletePlaylist($playlist_id) {
        $this->template->playlist_id = $playlist_id;
        $playlistHasSongs = $this->playlistsManager->checkPlaylistContent($playlist_id);
        if($playlistHasSongs){
            $this->playlistsManager->deletePlaylistWithSongs($playlist_id);
        }else{
            $this->playlistsManager->deletePlaylistWithoutSongs($playlist_id);
        }
        $pole = array();
        $pole['response'] = 1; 
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($pole));
    }
}