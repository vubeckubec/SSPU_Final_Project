<?php

namespace App\Presenters;

use App\Model\UserManager;
use Nette\Application\ForbiddenRequestException;
use Nette\Application\UI\Form;

use Tracy\Debugger;

class UserPresenter extends BasePresenter {

    private $userManager;

    function __construct(UserManager $userManager) {
        $this->userManager = $userManager;
    }
  
    public function actionCreate() {
        $data = array();
        $this['userForm']->setDefaults($data);
    }

    public function renderList() {
        $this->template->data = $this->userManager->getAll();
    }   

}