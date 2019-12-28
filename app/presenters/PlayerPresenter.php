<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\PlayerManager;
use Nette\Security\Identity;
use Nette\HTTP\IResponse;

class PlayerPresenter extends Nette\Application\UI\Presenter
{
    /** @var Nette\Database\Context */
    
	private $playerManager;
   
    public function __construct(PlayerManager $playerManager) {
        $this->playerManager = $playerManager;
        $this->setLayout('empty');
    }
 
    /*public function renderDefault($song_id) {
		$this->template->song_id = $song_id;
		$this->template->song_meta = $this->playerManager->readByID($song_id);
		if($this->template->song_meta) {
			$this->template->mp3_url = $this->link('Player:datafile',['song_id'=>$song_id]);
			$this->template->thumb_url = $this->link('Albums:thumbnail',['album_id'=>$this->template->song_meta->album_id]);
			$this->template->usernameIs = $this->playerManager->username_readById($this->user->getId());
		}else{
			$this->template->song_meta = new \stdClass();
			$this->template->song_meta->number = 0;
			$this->template->song_meta->time = 0;	
			$this->template->song_meta->song_name = "Invalid";	
			$this->template->song_meta->album_name = "Invalid";
			$this->template->song_meta->artist_name = "Invalid";		
			$this->template->mp3_url = "Error 404 not found";
			$this->template->thumb_url = "Error 404 not found";		
		}
		
    }*/

	public function renderDataFile($song_id) {
		if($this->getUser()->isLoggedIn()){
			$song_meta = $this->playerManager->readByID($song_id);
			$file_path = realpath(__DIR__ . "/../audio") . "\\" . strtr($song_meta->path, '/', '\\');
			$httpResponse = $this->context->getByType('Nette\Http\Response');
			$httpResponse->setHeader('Content-type', 'audio/mpeg, audio/x-mpeg, audio/x-mpeg-3, audio/mpeg3');
			$httpResponse->setHeader('Content-Length', filesize($file_path));
			$httpResponse->setHeader('Content-Disposition', 'attachment; filename="' . basename($file_path) . '"');
			$httpResponse->setHeader('X-Pad', 'avoid browser bug');
			$httpResponse->setHeader('Cache-Control', 'no-cache');
			$httpResponse->setHeader('Content-Transfer-Encoding', 'binary');
			$httpResponse->setHeader('Accept-Ranges', 'bytes');
			$this->sendResponse(new Nette\Application\Responses\FileResponse($file_path));	
		}else{
			$this->error("Song with ID '$song_id' was not found.",Nette\HTTP\IResponse::S401_UNAUTHORIZED);
		}	
	}
}