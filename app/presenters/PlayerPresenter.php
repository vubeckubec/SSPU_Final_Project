<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\PlayerManager;
use Nette\Security\Identity;
use Nette\HTTP\IResponse;

class PlayerPresenter extends Nette\Application\UI\Presenter
{ 
	private $playerManager;
   
    public function __construct(PlayerManager $playerManager) {
        $this->playerManager = $playerManager;
        $this->setLayout('empty_layout');
    }
 
	public function renderDataFile($song_id) {
		if($this->getUser()->isLoggedIn()){
			$song_meta = $this->playerManager->readByID($song_id);
			$file_path = realpath(__DIR__ . "/../writable/MP3s") . "\\" . strtr($song_meta->path, '/', '\\');
			$httpResponse = $this->context->getByType('Nette\Http\Response');
			$httpResponse->setHeader('Content-type', 'audio/mpeg, audio/x-mpeg, audio/x-mpeg-3, audio/mpeg3');
			$httpResponse->setHeader('Content-Length', filesize($file_path));
			$httpResponse->setHeader('Content-Disposition', 'attachment; filename="' . basename($file_path) . '"');
			$httpResponse->setHeader('X-Pad', 'avoid browser bug');
			$httpResponse->setHeader('Cache-Control', 'no-cache');
			$httpResponse->setHeader('Content-Transfer-Encoding', 'binary');
			//$httpResponse->setHeader('Accept-Ranges', 'bytes');
			$httpResponse->setHeader('Accept-Ranges', 'none');
			$this->sendResponse(new Nette\Application\Responses\FileResponse($file_path));	
		}else{
			$this->error("Song with ID '$song_id' was not found.",Nette\HTTP\IResponse::S401_UNAUTHORIZED);
		}	
	}
}