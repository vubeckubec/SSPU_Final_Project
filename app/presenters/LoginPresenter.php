<?php
declare(strict_types=1);
namespace App\Presenters;
use App\Forms;
use Nette\Application\UI\Form;
use App\Model\LoginManager;
final class LoginPresenter extends BasePresenter
{
	/** @persistent */
	public $backlink = '';
	/** @var Forms\SignInFormFactory */
	private $signInFactory;
	/** @var Forms\SignUpFormFactory */
	private $signUpFactory;

	private $loginManager;

	public function __construct(Forms\SignInFormFactory $signInFactory, Forms\SignUpFormFactory $signUpFactory, LoginManager $loginManager)
	{
		$this->signInFactory = $signInFactory;
		$this->signUpFactory = $signUpFactory;
		$this->loginManager = $loginManager;
		$this->setLayout('home_layout');
	}

	protected function createComponentSignInForm(): Form {
		return $this->signInFactory->create(function (): void {
			$this->restoreRequest($this->backlink);
			$this->redirect('Main:default');
		});
	}
	
	protected function createComponentSignUpForm(): Form {
		return $this->signUpFactory->create(function (): void {
			$this->redirect('Login:in');
		});
	}

	public function actionOut(): void {
		$this->getUser()->logout();
		$this->redirect('Login:default');
	}

	//Serves for redirection to main page if user is already logged in
	public function actionDefault(): void {
		if($this->getUser()->isLoggedIn()) {
			$this->redirect('Main:default');
		}
	}

}