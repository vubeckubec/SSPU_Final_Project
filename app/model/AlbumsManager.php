<?php
namespace App\Model;
use Nette;

class AlbumsManager
{
    private $database;
    
	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
	}

    public function readAlbumsWithLikes($artist_id,$user_id){
        return $this->database->fetchAll('SELECT album.album_id, album.name,album.year,album.pic_tn, artist_has_album.artist_id,IF(ISNULL(user_likes_album.user_iduser),"0","1") AS favorite
                                          FROM album
                                          JOIN artist_has_album ON album.album_id = artist_has_album.album_id
                                          LEFT JOIN user_likes_album ON album.album_id = user_likes_album.album_album_id AND user_likes_album.user_iduser = ?
                                          WHERE artist_has_album.artist_id = ?
                                          ORDER BY album.year',$user_id,$artist_id);
    }

    public function artist_is_valid($artist_id) {
        return $this->database->fetch('SELECT * 
                                       FROM artist
                                       WHERE artist.artist_id = ?',$artist_id);    
    }

    public function deleteLike($user_id,$album_id){
		$this->database->query('DELETE FROM user_likes_album 
                                WHERE user_likes_album.user_iduser = ? AND user_likes_album.album_album_id = ?',$user_id,$album_id);
		return 1;
	}

	public function insertLike($user_id,$album_id){
		$this->database->query('INSERT INTO user_likes_album 
                                VALUES (?,?)',$user_id,$album_id);
		return 1;
    }

    public function readByID($album_id){
        return $this->database->fetch('SELECT * 
                                       FROM album
                                       WHERE album.album_id = ?',$album_id); 
    }

    public function artistname_readByID($artist_id){
        return $this->database->fetch('SELECT artist.name
                                       FROM artist
                                       WHERE artist.artist_id = ?',$artist_id); 
    }

    public function username_readById($user_id){
		return $this->database->fetch('SELECT user.username,user.role FROM user WHERE iduser = ?',$user_id);
    }
    
    public function deleteAlbum($album_id,$artist_id) {
        //return value 0 means artist was not deleted
        //TODO mazat soubory na disku
        $res = 0;
        $this->database->query('LOCK TABLES user_likes_album WRITE, playlist_has_songs WRITE, song WRITE, artist_has_album WRITE, album WRITE, artist WRITE, user_likes_artist WRITE');
        $this->database->query('DELETE FROM user_likes_album WHERE user_likes_album.album_album_id = ?',$album_id);
        $this->database->query('DELETE playlist_has_songs FROM playlist_has_songs RIGHT JOIN song ON song.song_id = playlist_has_songs.song_song_id WHERE song.album_idalbum = ?',$album_id);
        $this->database->query('DELETE FROM song WHERE song.album_idalbum = ?',$album_id);
        $this->database->query('DELETE FROM artist_has_album WHERE artist_has_album.album_id = ?',$album_id);
        $this->database->query('DELETE FROM album WHERE album.album_id = ?',$album_id);
        $row = $this->database->fetch('SELECT COUNT(*) AS album_count FROM artist_has_album WHERE artist_has_album.artist_id = ?',$artist_id);
        if(isset($row)) {
            $count = $row->album_count;
            if($count < 1) {
                $this->database->query('DELETE FROM user_likes_artist WHERE user_likes_artist.artist_artist_id = ?',$artist_id);
                $this->database->query('DELETE FROM artist WHERE artist.artist_id = ?',$artist_id);
                $res = 1;
            }
        }
        $this->database->query('UNLOCK TABLES');						
		return $res;
    }

    

    
}