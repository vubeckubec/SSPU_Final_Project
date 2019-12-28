<?php
namespace App\Model;
use Nette;

class SearchManager {
   /* private const
		TABLE_NAME = 'user',
		COLUMN_IDUSER = 'iduser',
		COLUMN_USERNAME = 'username',
		COLUMN_PASSWORD = 'password';
*/
    private $database;
    
	public function __construct(Nette\Database\Context $database) {
	    $this->database = $database;
	}

    public function username_readById($user_id) {
		return $this->database->fetch('SELECT user.username FROM user WHERE iduser = ?',$user_id);
    }
    
    //nelibi se to konzultantovi
    public function searchSongs($query) {
        return $this->database->fetchAll('SELECT song.name,MATCH(name) AGAINST(? IN BOOLEAN MODE) AS relevance 
                                          FROM song 
                                          WHERE MATCH(name) AGAINST(? IN BOOLEAN MODE) 
                                          ORDER BY relevance DESC',$query,$query);
    }

    public function searchAlbums($query) {
        return $this->database->fetchAll('SELECT name,MATCH(name) AGAINST(? IN BOOLEAN MODE) AS relevance 
                                          FROM album 
                                          WHERE MATCH(name) AGAINST(? IN BOOLEAN MODE) 
                                          ORDER BY relevance DESC',$query,$query);
    }

    public function searchArtists($query) {
        return $this->database->fetchAll('SELECT name,MATCH(name) AGAINST(? IN BOOLEAN MODE) AS relevance 
                                          FROM artist 
                                          WHERE MATCH(name) AGAINST(? IN BOOLEAN MODE) 
                                          ORDER BY relevance DESC',$query,$query);
    }
}