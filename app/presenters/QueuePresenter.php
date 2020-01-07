<?php
declare(strict_types=1);
namespace App\Presenters;
use Nette;
use App\Model\QueueManager;
use Nette\Security\Identity;
use Nette\Application\Responses\JsonResponse;
require_once('myRenderers.php');

class QueuePresenter extends Nette\Application\UI\Presenter
{
    /** @var Nette\Database\Context */
    
    private $queueManager;
    
    public function __construct(QueueManager $queueManager) {
        $this->queueManager = $queueManager;
        $this->setLayout('empty_layout');
    }
 
    public function renderDefault($album_id,$playlist_id,$song_id,$deleteQueue) {
        $this->template->refreshUrl = $this->getHttpRequest()->getUrl()->getAbsoluteUrl();
        if($deleteQueue) {
            $this->queueManager->deleteUsersQueue($this->user->getId());
        }
        //filling queue
        if($album_id){
            $this->queueManager->insertAlbumToQueue($this->user->getId(),$album_id);
        }elseif($playlist_id){
            $this->queueManager->insertPlaylistToQueue($this->user->getId(),$playlist_id);
        }elseif($song_id) {
            $this->queueManager->insertSongToQueue($this->user->getId(),$song_id);
        }

        //processing queue
        $this->template->queue_list = array(); 
        $temp_queue_list = $this->queueManager->readAll($this->user->getId());

        preRenderSongsForQueue($this,$temp_queue_list,$this->template->queue_list);
        $jsonArray = array();
        foreach ($temp_queue_list as $qsong) {
            $jsonRow = array();
            $jsonRow['song_id'] = $qsong->song_id;
            $jsonRow['song_name'] = $qsong->song_name;
            $jsonRow['album_name'] = $qsong->album_name;
            $jsonRow['album_year'] = $qsong->year;
            $jsonRow['artist_name'] = $qsong->artist_name;
            $jsonRow['url'] = $this->link('Player:datafile',['song_id'=>$qsong->song_id]);
            $jsonRow['albumThumb'] = $this->link('Albums:thumbnail',['album_id'=>$qsong->album_id]);
            array_push($jsonArray,$jsonRow);
        }
        //passing queue as JSON
        $this->template->json = json_encode($jsonArray);
    }
}
