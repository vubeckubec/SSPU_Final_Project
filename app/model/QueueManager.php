<?php
namespace App\Model;
use Nette;

class QueueManager
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

    public function readAll($user_id) {
        return $this->database->fetchAll('SELECT queue.user_id,queue.song_id,queue.song_order,song.name AS song_name,song.time,song.album_idalbum,album.name AS album_name
                                          FROM queue
                                          JOIN song ON queue.song_id = song.song_id
                                          JOIN album ON song.album_idalbum = album.album_id
                                          WHERE queue.user_id = ?',$user_id); 
    }
    
    public function deleteUsersQueue($user_id) {
		return $this->database->query('DELETE FROM queue 
                                       WHERE queue.user_id = ?',$user_id);
	}

	public function insertAlbumToQueue($user_id,$album_id) {
        $this->deleteUsersQueue($user_id);
		$res =  $this->database->query('INSERT INTO queue (user_id,song_id) 
                                       SELECT ?, song.song_id
                                       FROM song 
                                       WHERE song.album_idalbum = ? 
                                       ORDER BY song.song_order',$user_id,$album_id);
        return $res;
    }

    public function insertPlaylistToQueue($user_id,$playlist_id) {
        $this->deleteUsersQueue($user_id);
        return $this->database->query('INSERT INTO queue (user_id,song_id)
                                       SELECT ?, playlist_has_songs.song_song_id
                                       FROM playlist_has_songs
                                       WHERE playlist_has_songs.playlist_idplaylist = ?
                                       ORDER BY playlist_has_songs.song_order',$user_id,$playlist_id);
    }

}