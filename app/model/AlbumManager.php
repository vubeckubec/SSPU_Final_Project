<?php
namespace App\Model;
use Nette;

class AlbumManager
{
    private $database;
    
	public function __construct(Nette\Database\Context $database) {
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

    public function readAll($album_id,$user_id,$sortmode){
        $myFavPlaylist = $this->getUsersFavoritePlaylist($user_id);
        if(!$myFavPlaylist){
            return NULL;
        }
        return $this->database->fetchAll('SELECT song.song_id,song.name,song.time,song.path,song.song_order,IF(ISNULL(playlist_has_songs.playlist_idplaylist),"0","1") AS favorite
                                          FROM song
                                          JOIN album ON album.album_id = song.album_idalbum AND song.album_idalbum = ?
                                          LEFT JOIN playlist_has_songs ON song.song_id = playlist_has_songs.song_song_id 
                                          AND playlist_has_songs.playlist_idplaylist = ?',$album_id,$myFavPlaylist);
    }
    
    public function deleteLike($fav_list,$album_id){
		$this->database->query('DELETE FROM playlist_has_songs 
                                WHERE playlist_has_songs.playlist_idplaylist = ? AND playlist_has_songs.song_song_id = ?',$fav_list,$album_id);
		return 1;
	}

	public function insertLike($fav_list,$album_id){
		$this->database->query('INSERT INTO playlist_has_songs(playlist_idplaylist,song_song_id) 
                                VALUES (?,?)',$fav_list,$album_id);
		return 1;
	}

    public function albumname_readByID($album_id){
        return $this->database->fetch('SELECT album.name
                                       FROM album
                                       WHERE album.album_id = ?',$album_id);            
    }

    public function album_is_valid($album_id) {
        return $this->database->fetch('SELECT * 
                                       FROM album 
                                       WHERE album.album_id = ?',$album_id);             
    }
}