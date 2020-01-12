<?php
namespace App\Model;
use Nette;

class MainManager {

    private $database;
    
	public function __construct(Nette\Database\Context $database) {
	    $this->database = $database;
	}

    public function username_readById($user_id){
		return $this->database->fetch('SELECT user.username,user.role FROM user WHERE iduser = ?',$user_id);
	}

	public function getFavPlaylist($user_id) {
		$result = $this->database->fetch('SELECT * FROM user_has_playlist WHERE user_iduser = ? AND isfavorites',$user_id);
		return $result ? 1 : 0;
	}

	public function getFavPlaylistId($user_id) {
		return $this->database->fetch('SELECT * FROM user_has_playlist WHERE user_iduser = ? AND isfavorites',$user_id);
	}

	public function insertUsersFavPlaylist($user_id) {
		$playlistName = $this->username_readById($user_id)->username . "'s favorites";
		return $this->insertUsersPlaylist($user_id,$playlistName,"1","0");						
	}

	public function insertUsersPlaylist($user_id, $playlistName, $isfavorite,$privacy) {
		//todo error control
		$this->database->query('LOCK TABLES playlist WRITE, user_has_playlist WRITE');
		$this->database->query('INSERT INTO playlist(name,private)
							    VALUES(?,?)',$playlistName,$privacy);
		$this->database->query('INSERT INTO user_has_playlist(user_iduser,playlist_idplaylist,isfavorites)
								VALUES (?,LAST_INSERT_ID(),?)',$user_id,$isfavorite);
		$this->database->query('UNLOCK TABLES');						
		return true;							
	}
}