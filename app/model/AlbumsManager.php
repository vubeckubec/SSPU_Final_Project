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

    public function readAll($artist_id,$user_id,$sortmode){
        return $this->database->fetchAll('SELECT album.album_id, album.name,album.year,album.pic_tn, artist_has_album.artist_id,IF(ISNULL(user_likes_album.user_iduser),"0","1") AS favorite
                                          FROM album
                                          JOIN artist_has_album ON album.album_id = artist_has_album.album_id
                                          LEFT JOIN user_likes_album ON album.album_id = user_likes_album.album_album_id AND user_likes_album.user_iduser = ?
                                          WHERE artist_has_album.artist_id = ?',$user_id,$artist_id);
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
}