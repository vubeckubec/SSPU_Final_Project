<?php
namespace App\Model;
use Nette;

class ArtistsManager {
	private $database;

	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
	}

    /*public function readAll($order){
        return $this->database->table(self::TABLE_NAME)
                    ->order($order)
                    ->fetchAll();
	}*/
	
	public function readByLikes($user_id){
		return $this->database->fetchAll('SELECT artist.artist_id,artist.name,IF(ISNULL(user_likes_artist.user_iduser),"0","1") AS favorite
									      FROM artist
										  LEFT JOIN user_likes_artist ON artist.artist_id = user_likes_artist.artist_artist_id AND user_likes_artist.user_iduser = ?', $user_id);	  					   
	}

	public function deleteLike($user_id,$artist_id){
		$this->database->query('DELETE FROM user_likes_artist WHERE user_likes_artist.user_iduser = ? AND user_likes_artist.artist_artist_id = ?',$user_id,$artist_id);
		return 1;
	}

	public function insertLike($user_id,$artist_id){
		$this->database->query('INSERT INTO user_likes_artist VALUES (?,?)',$user_id,$artist_id);
		return 1;
	}

	public function username_readById($user_id){
		return $this->database->fetch('SELECT user.username FROM user WHERE iduser = ?',$user_id);
	}
	
}