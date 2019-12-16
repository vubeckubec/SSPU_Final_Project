<?php
namespace App\Model;
use Nette;

class BlankManager {
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

    public function username_readById($user_id){
		return $this->database->fetch('SELECT user.username FROM user WHERE iduser = ?',$user_id);
	}
}