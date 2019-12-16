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
    
    public function readAll(){
                    return $this->database->fetchAll('SELECT user.iduser,user.username,user.role,user.disabled,user.private,user.personal,user.avatar
                                                      FROM `user`
                                                      WHERE user.disabled = 0 AND user.private = 0 AND user.role = "normal" '); 
    }
}