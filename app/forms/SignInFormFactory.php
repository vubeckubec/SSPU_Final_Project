<?php

declare(strict_types=1);

namespace App\Forms;

use Nette;
use Nette\Application\UI\Form;
use Nette\Security\User;

final class SignInFormFactory
{
	use Nette\SmartObject;

	/** @var FormFactory */
	private $factory;

	/** @var User */
	private $user;

	public function __construct(FormFactory $factory, User $user)
	{
		$this->factory = $factory;
		$this->user = $user;
	}
	public function Create(callable $onSuccess): Form
	{
		$form = $this->factory->create();
		$form->addText('username', 'Username:')
			->setRequired('Please fill in your username.');

		$form->addPassword('password', 'Password:')
			->setRequired('Please fill in your password.');

		$form->addCheckbox('remember', '  Remember me');

		$form->addSubmit('send', 'Login');
		
		$form->onSuccess[] = function (Form $form, \stdClass $values) use ($onSuccess): void {
			try {
				$this->user->setExpiration($values->remember ? '14 days' : '4000 minutes');
				$this->user->login($values->username, $values->password);
			} catch (Nette\Security\AuthenticationException $e) {
				$form->addError('Login error: ' . $e->getMessage());
				return;
			}
			$onSuccess();
		};
		return $form;
	}
}