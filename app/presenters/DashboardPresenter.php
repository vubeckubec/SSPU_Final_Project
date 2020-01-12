<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\DashboardManager;
use Nette\Security\Identity;
use Nette\Security\User;
use Nette\Application\Responses\JsonResponse;
use Nette\Application\UI\Presenter;

class DashboardPresenter extends Nette\Application\UI\Presenter {        
        private $dashboardManager;
        
        public function __construct(DashboardManager $dashboardManager) {
            $this->dashboardManager = $dashboardManager;
            $this->setLayout('empty_layout');
        }
        public function renderAdmin() {
            $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();

            $this->template->artistsCount = $this->dashboardManager->getArtistsCount();
            $this->template->albumsCount = $this->dashboardManager->getAlbumsCount();
            $this->template->songsCount = $this->dashboardManager->getSongsCount();
            $this->template->usersCount = $this->dashboardManager->getUsersCount();
            $this->template->playlistsCount = $this->dashboardManager->getPlaylistCount();
            $this->template->playlistSongsCount = $this->dashboardManager->getPlaylistSongsCount();
            $this->template->likedAlbumsCount = $this->dashboardManager->getLikedAlbumsCount();
            $this->template->likedArtistsCount = $this->dashboardManager->getLikedArtistsCount();
            $this->template->likedSongsCount = $this->dashboardManager->getLikedSongsCount();

            $playlistsCount = $this->dashboardManager->getPlaylistCount()->playlistCount;
            $playlistSongsCount = $this->dashboardManager->getPlaylistSongsCount()->playlistSongs;
            $songsCount = $this->dashboardManager->getSongsCount()->bytes;
            $this->template->averageSongCount = round($playlistSongsCount/$playlistsCount,1);
            $this->template->diskSize = round((($songsCount/1024)/1024)/1024,2);
        }

        public function renderNormal() {
            $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();  
            $this->template->user_id = $this->user->getId();
            $this->template->favorites_id = $this->dashboardManager->getFavPlaylistId($this->user->getId());
            $this->template->username = $this->dashboardManager->username_readById($this->user->getId());       
        }
}