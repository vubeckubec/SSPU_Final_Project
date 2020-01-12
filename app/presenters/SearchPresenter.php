<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\SearchManager;
use Nette\Security\Identity;
use Nette\Security\User;
use Nette\Application\Responses\JsonResponse;
require_once('myRenderers.php');

class SearchPresenter extends Nette\Application\UI\Presenter
{   
    /** @var Nette\Database\Context */
    
    private $searchManager;
    
    public function __construct(SearchManager $searchManager) {
        $this->searchManager = $searchManager;
        $this->setLayout('empty_layout');
    }
 
    public function renderDefault($query) {
        $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();
        $this->template->query = $query;
        $this->template->usernameIs = $this->searchManager->username_readById($this->user->getId());
        $role = $this->searchManager->username_readById($this->user->getId());
        $this->template->searchAlert = "Jsem v searchi '" . $query . "'";
        $this->template->fav_list = $this->searchManager->getUsersFavoritePlaylist($this->user->getId());

        $this->template->searchArtists = array();
        $searchArtists = $this->searchManager->searchArtists($this->user->getId(),$query);
        $this->template->numberOfArtists = count($this->searchManager->searchArtists($this->user->getId(),$query));
        preRenderArtistsForSearch($this,$searchArtists,$this->template->searchArtists); 

        $this->template->searchAlbums = array();
        $searchAlbums = $this->searchManager->searchAlbums($this->user->getId(),$query);
        $this->template->numberOfAlbums = count($this->searchManager->searchAlbums($this->user->getId(),$query));
        preRenderAlbumsForSearch($this,$searchAlbums,$this->template->searchAlbums,$role);

        $this->template->searchSongs = array();
        $searchSongs = $this->searchManager->searchSongs($this->user->getId(),$query);
        $this->template->numberOfSongs = count($this->searchManager->searchSongs($this->user->getId(),$query));
        preRenderSongsForSearch($this,$searchSongs,$this->template->searchSongs,$role);        
    }

    public function actionArtistLikeChange($artist_id,$favorite) {
        //$this->sendResponse(new JsonResponse(['klic' => 'hodnota']));
        //favorite = 0 means we want to insert new favorite
        //favorite = 1 means we want to delete existing
        if($favorite){
            $res = $this->searchManager->deleteArtistLike($this->user->getId(),$artist_id);
        }else{
            $res = $this->searchManager->inserArtistLike($this->user->getId(),$artist_id);
        }
        $this->sendResponse(new JsonResponse(['response' => $res]));
    }

    public function actionAlbumLikeChange($album_id,$favorite) {
        //$this->sendResponse(new JsonResponse(['klic' => 'hodnota']));
        //favorite = 0 means we want to insert new favorite
        //favorite = 1 means we want to delete existing
        if($favorite){
            $res = $this->searchManager->deleteAlbumLike($this->user->getId(),$album_id);
        }else{
            $res = $this->searchManager->insertAlbumLike($this->user->getId(),$album_id);
        }
        $this->sendResponse(new JsonResponse(['response' => $res]));
    }

    public function actionSongLikeChange($song_id,$favorite,$fav_list) {
        //$this->sendResponse(new JsonResponse(['klic' => 'hodnota']));
        //favorite = 0 means we want to insert new favorite
        //favorite = 1 means we want to delete existing
        if($favorite){
            $res = $this->searchManager->deleteSongLike($fav_list,$song_id);
        }else{
            $res = $this->searchManager->insertSongLike($fav_list,$song_id);
        }
        $this->sendResponse(new JsonResponse(['response' => $res]));
    }

    

}