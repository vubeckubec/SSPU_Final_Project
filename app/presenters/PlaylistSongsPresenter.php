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
        $this->setLayout('empty');
    }
 
    public function renderDefault($playlist_id) {
        $this->template->playlist_id = $playlist_id;
        $this->template->playlist_name = $this->playlistSongsManager->playlistName_readByID($playlist_id);
        $this->template->playlistSongs_list = array();     
        $temp_playlistSongs_list = $this->playlistSongsManager->readAll($playlist_id);
        preRenderSongsForPlaylist($this,$playlist_id,$temp_playlistSongs_list,$this->template->playlistSongs_list);
    }

}