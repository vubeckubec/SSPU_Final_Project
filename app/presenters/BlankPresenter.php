<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\BlankManager;
use Nette\Security\Identity;
use Nette\Security\User;
use Nette\Application\Responses\JsonResponse;

class BlankPresenter extends Nette\Application\UI\Presenter
{   
    /** @var Nette\Database\Context */
    
    private $blankManager;
    
    public function __construct(BlankManager $blankManager) {
        $this->blankManager = $blankManager;
        $this->setLayout('layout');
    }
 
    public function renderDefault() {
        $this->template->usernameIs = $this->blankManager->username_readById($this->user->getId());
        $this->template->user_id = $this->user->getId();
    }

}