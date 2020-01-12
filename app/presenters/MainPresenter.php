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
    private $mainManager;
    
    public function __construct(MainManager $mainManager) {
        $this->mainManager = $mainManager;
        $this->setLayout('main_layout');
    }
 
    public function renderDefault($view) {
        $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();
        $this->template->usernameIs = $this->mainManager->username_readById($this->user->getId());
        $userRole = $this->mainManager->username_readById($this->user->getId())->role;
        $this->template->user_id = $this->user->getId();
        $this->template->emptyQueueUrl = $this->link('Queue:default');
        if($userRole == "admin") {
            $this->template->dashboardUrl = $this->link('Dashboard:admin');
        }else{
            $this->template->dashboardUrl = $this->link('Dashboard:normal');
        }
        $this->template->view = $view;
        //Checking if user has fav playlist if not insert it 
        $userPlaylistsCount = $this->mainManager->getFavPlaylist($this->user->getId());
        if(!$userPlaylistsCount) {
            $this->mainManager->insertUsersFavPlaylist($this->user->getId());   
        }
        $this->template->favorites_id = $this->mainManager->getFavPlaylistId($this->user->getId());
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

    public function actionInsertPlaylist($user_id, $playlistName,$privacy) {
        //checking if creating playlist is done by the user
        $results = array();
        if($user_id == $this->user->getId()){
            $this->mainManager->insertUsersPlaylist($user_id,$playlistName,"0",$privacy);   
            $results['response'] = 1; 
        }else{
            $results['response'] = 0;
        }
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($results)); 
    } 
}