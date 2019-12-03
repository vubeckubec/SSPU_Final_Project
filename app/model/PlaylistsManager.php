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

    public function getUsersFavoritePlaylist($user_id){
        $results = $this->database->fetchAll('SELECT playlist_idplaylist FROM user_has_playlist WHERE user_has_playlist.user_iduser = ?' ,$user_id);
        if(count($results) == 1){
            return $results[0]->playlist_idplaylist;
        }else{
            return NULL;
        }
    }

    public function readAll($user_id){
                     $myFavPlaylist = $this->getUsersFavoritePlaylist($user_id);
                     if(!$myFavPlaylist){
                         return NULL;
                     }
                     return $this->database->fetchAll('SELECT playlist.idplaylist,playlist.name
                                                       FROM playlist
                                                       WHERE playlist.idplaylist = ?' ,$myFavPlaylist);
     }

     public function username_readById($user_id){
		return $this->database->fetch('SELECT user.username FROM user WHERE iduser = ?',$user_id);
	}

}
    