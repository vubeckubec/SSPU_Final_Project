<?php
declare(strict_types=1);
namespace App\Model;
use Nette;
use Nette\Security\Passwords;

final class UserManager implements Nette\Security\IAuthenticator
{
	use Nette\SmartObject;
        
	private const
		TABLE_NAME = 'user',
		COLUMN_IDUSER = 'iduser',
		COLUMN_USERNAME = 'username',
		COLUMN_PASSWORD = 'password';

	/** @var Nette\Database\Context */
	private $database;

	/** @var Passwords */
	private $passwords;

	public function __construct(Nette\Database\Context $database, Passwords $passwords)
	{
		$this->database = $database;
		$this->passwords = $passwords;
	}
	/**
	 * Performs an authentication.
	 * @throws Nette\Security\AuthenticationException
	 */
	public function authenticate(array $credentials): Nette\Security\IIdentity
	{
		[$username, $password] = $credentials;
		$row = $this->database->table(self::TABLE_NAME)
			->where(self::COLUMN_USERNAME, $username)
			->fetch();
		if (!$row) {
			throw new Nette\Security\AuthenticationException('The username is incorrect.', self::IDENTITY_NOT_FOUND);
		} elseif (!$this->passwords->verify($password, $row[self::COLUMN_PASSWORD])) {
			throw new Nette\Security\AuthenticationException('The password is incorrect.', self::INVALID_CREDENTIAL);
		} elseif ($this->passwords->needsRehash($row[self::COLUMN_PASSWORD])) {
			$row->update([
				self::COLUMN_PASSWORD => $this->passwords->hash($password),
			]);
		}
		$arr = $row->toArray();
		unset($arr[self::COLUMN_PASSWORD]);
		return new Nette\Security\Identity($row[self::COLUMN_IDUSER], $arr);	
	}
	/**
	 * Adds new user.
	 * @throws DuplicateNameException
	 */
	public function add(string $username, string $password): void
	{
		try {
			$this->database->table(self::TABLE_NAME)->insert([
				self::COLUMN_USERNAME => $username,
				self::COLUMN_PASSWORD => $this->passwords->hash($password),
			]);
		} catch (Nette\Database\UniqueConstraintViolationException $e) {
			throw new DuplicateNameException;
		}
	}
	
    public function getUser($id){
        return $this->database->table(self::TABLE_NAME)->where('id = ?', $id)->fetch();
	}
	
	
}
class DuplicateNameException extends \Exception
{
}