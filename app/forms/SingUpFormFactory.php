<?php
declare(strict_types=1);
namespace App\Forms;
use App\Model;
use Nette;
use Nette\Application\UI\Form;
final class SignUpFormFactory
{
	use Nette\SmartObject;
	private const PASSWORD_MIN_LENGTH = 7;
	private $factory;
	private $userManager;
	public function __construct(FormFactory $factory, Model\UserManager $userManager)
	{
		$this->factory = $factory;
		$this->userManager = $userManager;
	}
	public function create(callable $onSuccess): Form
	{
		$form = $this->factory->create();
		$form->addText('username', 'Choose your username:')
			->setRequired('Please choose your username.');
		$form->addPassword('password', 'Choose your password:')
			->setOption('description', sprintf('at least %d characters', self::PASSWORD_MIN_LENGTH))
			->setRequired('Please create your password.')
			->addRule($form::MIN_LENGTH, null, self::PASSWORD_MIN_LENGTH);
		$form->addPassword('passwordVerify', 'Password verification: ')	
			 ->setRequired('Please fill out the password again')
			 ->addRule($form::EQUAL,"The passwords don't match.",$form['password']);
		$form->addSubmit('send', 'Sign up');
		$form->onSuccess[] = function (Form $form, \stdClass $values) use ($onSuccess): void {
			try {
				$this->userManager->add($values->username, $values->password);
			} catch (Model\DuplicateNameException $e) {
				$form['username']->addError('Username is already taken.');
				return;
			}
			$onSuccess();
		};
		return $form;
	}
}