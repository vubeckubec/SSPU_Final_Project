<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\SpinnerManager;
use Nette\Security\Identity;
use Nette\Security\User;
use Nette\Application\Responses\JsonResponse;

class SpinnerPresenter extends Nette\Application\UI\Presenter
{   
    /** @var Nette\Database\Context */
    
    private $spinnerManager;
    
    public function __construct(SpinnerManager $spinnerManager) {
        $this->spinnerManager = $spinnerManager;
        $this->setLayout('empty');
    }
 
    public function renderDefault() {
        $this->template->usernameIs = $this->spinnerManager->username_readById($this->user->getId());
        $this->template->user_id = $this->user->getId();
    }

}