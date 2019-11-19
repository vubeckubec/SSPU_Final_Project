<?php
namespace App\Model;
use Nette;

class PlayerManager
{
	const
		TABLE_NAME = 'song',
		COLUMN_SONG_ID = 'song_id',
        COLUMN_NAME = 'name',
        COLUMN_TIME = 'time',
        COLUMN_album_idalbum = 'idalbum',
        COLUMN_PATH= 'path',
        COLUMN_NUMBER = 'number';
    /** @var Nette\Database\Context */
    
    private $database;
    
	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
	}

    public function readByID($id){
        $row = $this->database->fetch('SELECT artist.name AS artist_name,album.name AS album_name, album.year, album.album_id, song.name AS song_name, song.time,song.number,song.path 
                                       FROM `song`
                                       LEFT JOIN album ON album.album_id = song.album_idalbum
                                       JOIN artist_has_album ON artist_has_album.album_id = album.album_id 
                                       JOIN artist ON artist_has_album.artist_id = artist.artist_id
                                       WHERE song_id = ?',$id);
        return $row;
    }
}