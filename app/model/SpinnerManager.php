<?php
namespace App\Model;
use Nette;

class SpinnerManager {

    private $database;
    
	public function __construct(Nette\Database\Context $database) {
	    $this->database = $database;
	}

    public function username_readById($user_id){
		return $this->database->fetch('SELECT user.username,user.role FROM user WHERE iduser = ?',$user_id);
	}
}