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
	/** @var FormFactory */
	private $factory;
	/** @var Model\UserManager */
	private $userManager;
	public function __construct(FormFactory $factory, Model\UserManager $userManager)
	{
		$this->factory = $factory;
		$this->userManager = $userManager;
	}
	public function create(callable $onSuccess): Form
	{
		$form = $this->factory->create();
		$form->addText('username', 'Zvolte si své uživatelské jméno:')
			->setRequired('Prosím zvolte si své uživatelské jméno.');
		$form->addPassword('password', 'Vytvořte si své heslo:')
			->setOption('description', sprintf('alespoň %d znaků', self::PASSWORD_MIN_LENGTH))
			->setRequired('Prosím vytvořte si své heslo.')
			->addRule($form::MIN_LENGTH, null, self::PASSWORD_MIN_LENGTH);
		$form->addSubmit('send', 'Registrovat');
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