<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\UserListManager;
use Nette\Security\Identity;
use Nette\Application\Responses\JsonResponse;   

class UserListPresenter extends Nette\Application\UI\Presenter
{
    private $userlistManager;
    
    public function __construct(UserListManager $userlistManager) {
        $this->userlistManager = $userlistManager;
        $this->setLayout('empty_layout');
    }
 
    public function renderDefault() {
        $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();
        $this->template->UsersList = $this->userlistManager->readAll($this->user->getId());
    }
}