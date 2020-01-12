<?php
namespace App\Model;
use Nette;

class ProfileManager {
	private $database;

	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
	}

	public function readById($user_id){
        return $this->database->fetch('SELECT user.iduser, user.username, user.role, user.disabled, user.private, user.personal, user.avatar
                                          FROM user
                                          WHERE user.iduser = ?',$user_id);	  					   
	}

    public function updatePersonal($user_id, $blurb) {
        return $this->database->query('UPDATE user
                                       SET personal = ?
                                       WHERE iduser = ?',$blurb,$user_id);
    }

    public function updateAvatar($user_id, $myFileName) {
        return $this->database->query('UPDATE user
                                       SET avatar = ?
                                       WHERE iduser = ?',$myFileName,$user_id);
    }

    public function getUsersPlaylistCount($user_id) {
        return $this->database->fetch('SELECT user_iduser,COUNT(playlist_idplaylist) AS playlist_count FROM user_has_playlist WHERE user_iduser = ?',$user_id);
    }
}