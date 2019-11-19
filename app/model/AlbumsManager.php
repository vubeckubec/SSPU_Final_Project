<?php
namespace App\Model;
use Nette;

class AlbumsManager
{
	const
		TABLE_NAME = 'album',
		COLUMN_IDALBUM = 'album_id',
        COLUMN_NAME = 'name',
        COLUMN_YEAR = 'year',
        COLUMN_PIC_TN = 'pic_tn';
    /** @var Nette\Database\Context */
    
    private $database;
    
	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
	}

    public function readAll($artist_id,$user_id,$sortmode){
        /*return $this->database->table('album')
                    ->where(':artist_has_album.artist_id',$artist_id)
                    ->order($sortmode)
                    ->fetchAll();*/
    return $this->database->fetchAll('SELECT album.album_id, album.name,album.year,album.pic_tn, artist_has_album.artist_id,IF(ISNULL(user_likes_album.user_iduser),"0","1") AS favorite
            FROM `album`
            JOIN artist_has_album ON album.album_id = artist_has_album.album_id
            LEFT JOIN user_likes_album ON album.album_id = user_likes_album.album_album_id AND user_likes_album.user_iduser = ?
            WHERE artist_has_album.artist_id = ?',$user_id,$artist_id);
    }

    public function readByID($id){
        return $this->database->table(self::TABLE_NAME)
                    ->get($id);
    }

    public function artistname_readByID($id){
        return $this->database->table('artist')
                    ->get($id)->name;
    }

    public function artist_is_valid($id) {
        return $this->database->table('artist')
                    ->get($id);
    }

    public function deleteLike($user_id,$album_id){
		$this->database->query('DELETE FROM user_likes_album WHERE user_likes_album.user_iduser = ? AND user_likes_album.album_album_id = ?',$user_id,$album_id);
		return 1;
	}

	public function insertLike($user_id,$album_id){
		$this->database->query('INSERT INTO user_likes_album VALUES (?,?)',$user_id,$album_id);
		return 1;
	}
}