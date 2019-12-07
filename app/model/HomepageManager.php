<?php
namespace App\Model;
use Nette;
/**
 * Users management.
 */
class HomepageManager
{
	//use Nette\SmartObject;
	const
		TABLE_NAME = 'artist',
		COLUMN_IDARTIST = 'artist_id',
		COLUMN_NAME = 'name';
	/** @var Nette\Database\Context */
	private $database;
	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
	}

    public function readAll($order){
        return $this->database->table(self::TABLE_NAME)
                    #->order($order)
                    ->fetchAll();
    }
        
    public function readByID($id){
        return $this->database->table(self::TABLE_NAME)
                    ->get($id);
	}
}

//SELECT * FROM `artist_has_album` JOIN artist ON artist.idartist = artist_has_album.artist_idartist JOIN album ON album.idalbum = artist_has_album.album_idalbum WHERE idartist = 1 