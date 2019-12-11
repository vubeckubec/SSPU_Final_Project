<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\QueueManager;
use Nette\Security\Identity;
use Nette\Application\Responses\JsonResponse;

class QueuePresenter extends Nette\Application\UI\Presenter
{
    /** @var Nette\Database\Context */
    
    private $queueManager;
    
    public function __construct(QueueManager $queueManager) {
        $this->queueManager = $queueManager;
        $this->setLayout('empty');
    }
 
    public function renderDefault($album_id,$playlist_id) {
        $this->template->album_id = $album_id;    
        $this->template->playlist_id = $playlist_id;
        if($album_id){
            $this->queueManager->insertAlbumToQueue($this->user->getId(),$album_id);
        }elseif($playlist_id){
            $this->queueManager->insertPlaylistToQueue($this->user->getId(),$playlist_id);
        }
        $this->template->queue_list = $this->queueManager->readAll($this->user->getId());  

        $jsonArray = array();
        $counter = 0;
        foreach ($this->template->queue_list as $qsong) {
            $jsonRow = array();
            $jsonRow['song_id'] = $qsong->song_id;
            $jsonRow['song_name'] = $qsong->song_name;
            $jsonRow['album_name'] = $qsong->album_name;
            $jsonRow['url'] = $this->link('Player:datafile',['song_id'=>$qsong->song_id]);
            array_push($jsonArray,$jsonRow);
            //$jsonArray[$counter] = $jsonRow;
            $counter++;
        }

        $this->template->json = json_encode($jsonArray);
    }
}
