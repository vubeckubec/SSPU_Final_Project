<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\ArtistsManager;
use Nette\Security\Identity;
use Nette\Security\User;
use Nette\Application\Responses\JsonResponse;

class ArtistsPresenter extends Nette\Application\UI\Presenter {
    private $artistsManager;
    
    public function __construct(ArtistsManager $artistsManager) {
        $this->artistsManager = $artistsManager;
        $this->setLayout('empty');
    }
 
    public function renderDefault() {
        //$this->template->interpretList = $this->artistsManager->readAll($id);
        $this->template->interpretList = $this->artistsManager->readByLikes($this->user->getId());
        $this->template->usernameIs = $this->artistsManager->username_readById($this->user->getId());
    }

    public function renderDummy() {
        $this->template->usernameIs = $this->artistsManager->username_readById($this->user->getId());
    }

    public function actionLikeChange($artist_id,$favorite) {
        if ($this->isAjax()){
            //$this->sendResponse(new JsonResponse(['klic' => 'hodnota']));
            //favorite = 0 means we want to insert new favorite
            //favorite = 1 means we want to delete existing
            if($favorite){
                $res = $this->artistsManager->deleteLike($this->user->getId(),$artist_id);
            }else{
                $res = $this->artistsManager->insertLike($this->user->getId(),$artist_id);
            }
            $this->sendResponse(new JsonResponse(['response' => $res]));
        }
    }
}