<?php
namespace App\Model;
use Nette;
/**
 * Users management.
 */
class LoginManager
{

	private $database;

	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
	}

}