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
        $this->template->playlists_list = $this->playlistsManager->readAll($this->user->getId()); 
        $this->template->usernameIs = $this->playlistsManager->username_readById($this->user->getId());
    }
}