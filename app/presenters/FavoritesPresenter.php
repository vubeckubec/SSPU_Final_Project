<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\FavoritesManager;
use Nette\Security\Identity;
use Nette\Application\Responses\JsonResponse;  
require_once('myRenderers.php');

class FavoritesPresenter extends Nette\Application\UI\Presenter
{
    /** @var Nette\Database\Context */
    
    private $favoritesManager;
    
    public function __construct(FavoritesManager $favoritesManager) {
        $this->favoritesManager = $favoritesManager;
        $this->setLayout('empty_layout');
    }
 
    public function renderDefault($favorites_id) {
        $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();
        $this->template->favorites_id = $favorites_id;
        //$this->template->playlist_name = $this->favoritesManager->playlistName_readByID($favorites_id);
        $this->template->playlist_owner = $this->favoritesManager->username_readById($this->user->getId());
        $this->template->playlistSongs_list = array();     
        $temp_playlistSongs_list = $this->favoritesManager->readAllFavorites($favorites_id);
        preRenderSongsForFavorites($this,$favorites_id,$temp_playlistSongs_list,$this->template->playlistSongs_list);
    }

    public function actionDeleteSong($song_id,$playlist_id) {
        $this->favoritesManager->deleteSong($song_id,$playlist_id);
        $results = array();
        $results['response'] = 1; 
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($results));
    }

}