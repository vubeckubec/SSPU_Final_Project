<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\ProfileManager;
use Nette\Security\Identity;
use Nette\Security\User;
use Nette\Application\Responses\JsonResponse;

class ProfilePresenter extends Nette\Application\UI\Presenter {

    private $profileManager;
    
    public function __construct(ProfileManager $profileManager) {
        $this->profileManager = $profileManager;
        $this->setLayout('empty_layout');
    }
 
    public function renderDefault($user_id) {
        $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();
        $this->template->user_id = $user_id;
        $this->template->profileInfo = $this->profileManager->readById($user_id);
        $rand_number = mt_rand();
        $this->template->thumb_url = $this->link('Profile:thumbnail',['user_id'=>$user_id,'dummy'=>$rand_number]);
        $this->template->save_url = $this->link('Profile:save',['user_id'=>$user_id]);
    }

    public function renderThumbnail($user_id) {
        //If passed with invalid user ID we fall back to blank avatar.
        $file_path = "";
        try{
            $picture = $this->profileManager->readById($user_id);
            if(isset($picture) && $picture){
                $file_path = realpath(__DIR__ . "/../writable/avatars") . "\\" . strtr($picture->avatar, '/', '\\');
            }
        }catch(\Exception $e){

        }
        if(!is_file($file_path)){
            $file_path = realpath(__DIR__ . "/../writable/avatars") . "\\" . "blank-avatar.png";   
        }
		$httpResponse = $this->context->getByType('Nette\Http\Response');
		$httpResponse->setHeader('Content-type', 'image/jpeg');
		$httpResponse->setHeader('Content-Length', filesize($file_path));
		$httpResponse->setHeader('Content-Disposition', 'attachment; filename="' . basename($file_path) . '"');
		$httpResponse->setHeader('X-Pad', 'avoid browser bug');
        $httpResponse->setHeader("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0, post-check=0, pre-check=0");
        $httpResponse->setHeader("Pragma", "no-cache");
		$httpResponse->setHeader('Content-Transfer-Encoding', 'binary');
        $httpResponse->setHeader('Accept-Ranges', 'bytes');
		$this->sendResponse(new Nette\Application\Responses\FileResponse($file_path));	
    }
    
    public function actionSave($user_id,$personal) {
        $this->profileManager->updatePersonal($user_id,$personal);
        $pole = array();
        $pole['personal'] = $personal;
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($pole));
    }
    
    public function actionUploadThumb($user_id) {
        $result_msg = "";
        if(isset($_FILES["file"]["type"])) {
            $validextensions = array("jpeg", "jpg", "png");
            $temporary = explode(".", $_FILES["file"]["name"]);
            $file_extension = end($temporary);
            $myFileName = $user_id . '.' . $file_extension;
            if ((($_FILES["file"]["type"] == "image/png") || ($_FILES["file"]["type"] == "image/jpg") || ($_FILES["file"]["type"] == "image/jpeg")) 
            && ($_FILES["file"]["size"] < 100000) && in_array($file_extension, $validextensions)) {
                if ($_FILES["file"]["error"] > 0) {
                   $result_msg =  "Return Code: " . $_FILES["file"]["error"];
                }else{
                    $sourcePath = $_FILES['file']['tmp_name']; // Storing source path of the file in a variable
                    $targetPath = realpath(__DIR__ . "/../writable/avatars") . "\\" . $myFileName; // Target path where file is to be stored
                    move_uploaded_file($sourcePath,$targetPath) ; // Moving Uploaded file
                    $this->profileManager->updateAvatar($user_id,$myFileName);
                }
            }else{
               $result_msg = "***Invalid file Size or Type***";
            }
        }
        $results = array();
        $results['message'] = $result_msg;
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($results));
    }


}