<?php
namespace App\Model;
use Nette;

class UserListManager
{
    private $database;
    
	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
    }
    
    public function readAll($user_id) {
                    return $this->database->fetchAll('SELECT user.iduser,user.username,user.role,user.disabled,user.private,user.personal,user.avatar,
                    COUNT(user_has_playlist.playlist_idplaylist) AS playlistCount
                    FROM `user`
                    LEFT JOIN user_has_playlist ON user.iduser = user_has_playlist.user_iduser WHERE NOT user.iduser = ? AND NOT user.disabled AND NOT user.private AND NOT user.role = "admin"
                    GROUP BY user.iduser',$user_id); 
    }
}