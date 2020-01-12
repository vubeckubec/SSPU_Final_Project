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

    public function getUsersFavoritePlaylist($user_id){
        $results = $this->database->fetchAll('SELECT playlist_idplaylist FROM user_has_playlist WHERE user_has_playlist.isfavorites = 1 AND user_has_playlist.user_iduser = ?' ,$user_id);
        if(count($results) == 1){
            return $results[0]->playlist_idplaylist;
        }else{
            return NULL;
        }
    }

    public function readAll($user_id) {
        $myFavPlaylist = $this->getUsersFavoritePlaylist($user_id);
        if(!$myFavPlaylist){
            return NULL;
        }
        return $this->database->fetchAll('SELECT queue.user_id,queue.song_id,queue.song_order,song.name AS song_name,song.time,song.album_idalbum,album.name AS album_name,album.pic_tn,album.year,
        artist.artist_id,album.album_id,artist.name AS artist_name,IF(ISNULL(playlist_has_songs.playlist_idplaylist),"0","1") AS favorite
        FROM queue
        JOIN song ON queue.song_id = song.song_id
        JOIN album ON song.album_idalbum = album.album_id
        JOIN artist_has_album ON album.album_id = artist_has_album.album_id
        JOIN artist ON artist_has_album.artist_id = artist.artist_id
        LEFT JOIN playlist_has_songs ON song.song_id = playlist_has_songs.song_song_id 
        WHERE queue.user_id = ? OR playlist_has_songs.playlist_idplaylist = ?
        GROUP BY queue.song_id
        ORDER BY queue.song_order ASC',$user_id,$myFavPlaylist); 
    }
 
    public function deleteUsersQueue($user_id) {
		return $this->database->query('DELETE FROM queue 
                                       WHERE queue.user_id = ?',$user_id);
	}

	public function insertAlbumToQueue($user_id,$album_id) {
		$res =  $this->database->query('INSERT INTO queue (user_id,song_id) 
                                       SELECT ?, song.song_id
                                       FROM song 
                                       WHERE song.album_idalbum = ? 
                                       ORDER BY song.song_order',$user_id,$album_id);   
        return $res;
    }

    public function insertPlaylistToQueue($user_id,$playlist_id) {
        return $this->database->query('INSERT INTO queue (user_id,song_id)
                                       SELECT ?, playlist_has_songs.song_song_id
                                       FROM playlist_has_songs
                                       WHERE playlist_has_songs.playlist_idplaylist = ?
                                       ORDER BY playlist_has_songs.song_order',$user_id,$playlist_id);
    }

    public function insertSongToQueue($user_id,$song_id) {
        return $this->database->query('INSERT INTO queue (user_id,song_id) VALUES(?,?)',$user_id,$song_id);
    }


    public function albuminfo_readByID($album_id){
        return $this->database->fetch('SELECT artist.name AS artist_name,album.name AS album_name, album.year, artist_has_album.artist_id,artist_has_album.album_id
                                       FROM album
                                       JOIN artist_has_album ON artist_has_album.album_id = album.album_id
                                       JOIN artist ON artist.artist_id = artist_has_album.artist_id
                                       AND album.album_id = ?',$album_id);            
    }

    public function deleteLike($fav_list,$song_id){
		$this->database->query('DELETE FROM playlist_has_songs 
                                WHERE playlist_has_songs.playlist_idplaylist = ? AND playlist_has_songs.song_song_id = ?',$fav_list,$song_id);
		return 1;
    }
    
    public function deleteSongFromQueue($song_id,$user_id) {
        return $this->database->query('DELETE FROM queue WHERE queue.song_id = ? AND queue.user_id = ?',$song_id,$user_id);
    }

	public function insertLike($fav_list,$song_id){
        try{
            $this->database->query('INSERT INTO playlist_has_songs(playlist_idplaylist,song_song_id) 
                                VALUES (?,?)',$fav_list,$song_id);
        }catch(\Exception $e){

        }
		return 1;
	}

}