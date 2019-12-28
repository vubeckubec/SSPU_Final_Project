<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\SearchManager;
use Nette\Security\Identity;
use Nette\Security\User;
use Nette\Application\Responses\JsonResponse;

class SearchPresenter extends Nette\Application\UI\Presenter
{   
    /** @var Nette\Database\Context */
    
    private $searchManager;
    
    public function __construct(SearchManager $searchManager) {
        $this->searchManager = $searchManager;
        $this->setLayout('empty');
    }
 
    public function renderDefault($query) {
        $this->template->query = $query;
        $this->template->usernameIs = $this->searchManager->username_readById($this->user->getId());
        $this->template->searchAlert = "Jsem v searchi '" . $query . "'";
        $this->template->searchSongs = $this->searchManager->searchSongs($query);
        $this->template->searchAlbums = $this->searchManager->searchAlbums($query);  
        $this->template->searchArtists = $this->searchManager->searchArtists($query);
        $this->template->numberOfSongs = count($this->searchManager->searchSongs($query));
        $this->template->numberOfAlbums = count($this->searchManager->searchAlbums($query));    
        $this->template->numberOfArtists= count($this->searchManager->searchArtists($query));        
    }

}