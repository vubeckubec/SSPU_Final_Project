<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\MainManager;
use Nette\Security\Identity;
use Nette\Security\User;
use Nette\Application\Responses\JsonResponse;
use Nette\Application\UI\Presenter;
use Nette\Http\UrlScript;

class MainPresenter extends Nette\Application\UI\Presenter
{   
    /** @var Nette\Database\Context */
    
    private $mainManager;
    
    public function __construct(MainManager $mainManager) {
        $this->mainManager = $mainManager;
        $this->setLayout('layout');
    }
 
    public function renderDefault($view) {
        $this->template->usernameIs = $this->mainManager->username_readById($this->user->getId());
        $this->template->user_id = $this->user->getId();
        $this->template->view = $view;
        //Checking if user has fav playlist if not insert it 
        $userPlaylistsCount = $this->mainManager->getFavPlaylist($this->user->getId());
        if(!$userPlaylistsCount) {
            $this->mainManager->insertUsersFavPlaylist($this->user->getId());   
        }
        $paramsArr = array();
        $this->template->contentUrl = "";
        $request = $this->getRequest();
        $params = $request->getParameters();
        foreach(array_keys($params) as $param) {
            if($param == "view" || $param == "action" || $param == "id"){
                continue;
            }
            $paramsArr[$param] = $params[$param];
        }
        if($view == "albums") {
            $this->template->contentUrl = $this->link('Albums:default',$paramsArr);
        }else if($view == "artists") {
            $this->template->contentUrl = $this->link('Artists:default');
        }else if($view == "profile") {
            $this->template->contentUrl = $this->link('Profile:default',$paramsArr);    
        }else if($view == "playlists") {
            $this->template->contentUrl = $this->link('Playlists:default',$paramsArr);
        }else if($view == "user-list") {
            $this->template->contentUrl = $this->link('UserList:default');
        }else if($view == "album") {
            $this->template->contentUrl = $this->link('Album:default',$paramsArr); 
        }
    }

    public function actionInsertPlaylist($user_id, $playlistName) {
        $this->mainManager->insertUsersPlaylist($user_id,$playlistName,"0");
        $pole = array();
        $pole['response'] = 1; 
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($pole));
    } 
}