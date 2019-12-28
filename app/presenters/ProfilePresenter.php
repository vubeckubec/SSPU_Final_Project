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
        $this->setLayout('empty');
    }
 
    public function renderDefault($user_id) {
        $this->template->user_id = $user_id;
        $this->template->profileInfo = $this->profileManager->readById($user_id);
        $this->template->thumb_url = $this->link('Profile:thumbnail',['user_id'=>$user_id]);
        $this->template->save_url = $this->link('Profile:save',['user_id'=>$user_id]);
    }

    public function renderThumbnail($user_id) {
		$picture = $this->profileManager->readById($user_id);
        $file_path = realpath(__DIR__ . "/../writable/avatars") . "\\" . strtr($picture->avatar, '/', '\\');
        if(!is_file($file_path)){
            $file_path = realpath(__DIR__ . "/../writable/avatars") . "\\" . "blank-avatar.png";   
        }
		$httpResponse = $this->context->getByType('Nette\Http\Response');
		$httpResponse->setHeader('Content-type', 'image/jpeg');
		$httpResponse->setHeader('Content-Length', filesize($file_path));
		$httpResponse->setHeader('Content-Disposition', 'attachment; filename="' . basename($file_path) . '"');
		$httpResponse->setHeader('X-Pad', 'avoid browser bug');
		$httpResponse->setHeader('Cache-Control', 'no-cache');
		$httpResponse->setHeader('Content-Transfer-Encoding', 'binary');
        $httpResponse->setHeader('Accept-Ranges', 'bytes');
        $httpResponse->setHeader('X-Victor', $file_path);
		$this->sendResponse(new Nette\Application\Responses\FileResponse($file_path));	
    }
    
    public function actionSave($user_id,$personal) {
        $this->profileManager->updatePersonal($user_id,$personal);
        $pole = array();
        $pole['personal'] = $personal;
        $this->sendResponse(new \Nette\Application\Responses\JsonResponse($pole));
    }
    
    public function actionUploadThumb($user_id) {
        if(isset($_FILES["file"]["type"])) {
            $validextensions = array("jpeg", "jpg", "png");
            $temporary = explode(".", $_FILES["file"]["name"]);
            $file_extension = end($temporary);
            $myFileName = $user_id . '.' . $file_extension;
            if ((($_FILES["file"]["type"] == "image/png") || ($_FILES["file"]["type"] == "image/jpg") || ($_FILES["file"]["type"] == "image/jpeg")) 
            && ($_FILES["file"]["size"] < 100000) && in_array($file_extension, $validextensions)) {
                if ($_FILES["file"]["error"] > 0) {
                    echo "Return Code: " . $_FILES["file"]["error"] . "<br/><br/>";
                }else{
                    $sourcePath = $_FILES['file']['tmp_name']; // Storing source path of the file in a variable
                    $targetPath = realpath(__DIR__ . "/../writable/avatars") . "\\" . $myFileName; // Target path where file is to be stored
                    move_uploaded_file($sourcePath,$targetPath) ; // Moving Uploaded file
                    echo "<span id='success'>Image Uploaded Successfully...!!</span><br/>";
                    echo "<br/><b>File Name:</b> " . $myFileName . "<br>";
                    echo "<b>Type:</b> " . $_FILES["file"]["type"] . "<br>";
                    echo "<b>Size:</b> " . ($_FILES["file"]["size"] / 1024) . " kB<br>";
                    echo "<b>Temp file:</b> " . $_FILES["file"]["tmp_name"] . "<br>";
                    $this->profileManager->updateAvatar($user_id,$myFileName);
                }
            }else{
                echo "<span id='invalid'>***Invalid file Size or Type***<span>";
            }
        }
    }


}