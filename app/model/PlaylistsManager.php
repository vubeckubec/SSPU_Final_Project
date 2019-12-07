<?php
namespace App\Model;
use Nette;

class PlaylistsManager
{
	const
		TABLE_NAME = 'playlist',
		COLUMN_idplaylist = 'playlist_id',
        COLUMN_NAME = 'playlist_name';
    /** @var Nette\Database\Context */
    
    private $database;
    
	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
	}

  /*  public function getUsersPlaylist($user_id) {
        $results = $this->database->fetchAll('SELECT playlist_idplaylist FROM user_has_playlist WHERE user_has_playlist.user_iduser = ?' ,$user_id);
        $array_len = count($results);
        for($i=0;$i<$array_len;$i++){
            $each_res = $results[$i];
            return $each_res->playlist_idplaylist;
        }
    }*/ 

    public function readAll($user_id){
        return $this->database->fetchAll('SELECT user_has_playlist.user_iduser,user_has_playlist.playlist_idplaylist,playlist.name,playlist.idplaylist 
                                          FROM `user_has_playlist` 
                                          JOIN playlist ON playlist.idplaylist = user_has_playlist.playlist_idplaylist AND user_has_playlist.user_iduser = ?',$user_id);
     }

     public function username_readById($user_id){
		return $this->database->fetch('SELECT user.username FROM user WHERE iduser = ?',$user_id);
	}

}
    