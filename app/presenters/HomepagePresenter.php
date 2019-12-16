<?php
declare(strict_types=1);
namespace App\Presenters;
use App\Forms;
use Nette\Application\UI\Form;
final class HomepagePresenter extends BasePresenter
{
	/** @persistent */
	public $backlink = '';
	/** @var Forms\SignInFormFactory */
	private $signInFactory;
	/** @var Forms\SignUpFormFactory */
	private $signUpFactory;
	public function __construct(Forms\SignInFormFactory $signInFactory, Forms\SignUpFormFactory $signUpFactory)
	{
		$this->signInFactory = $signInFactory;
        $this->signUpFactory = $signUpFactory;
		$this->setLayout('home_layout');
	}

	protected function createComponentSignInForm(): Form {
		return $this->signInFactory->create(function (): void {
			$this->restoreRequest($this->backlink);
			$this->redirect('Blank:default');
		});
	}
	
	protected function createComponentSignUpForm(): Form {
		return $this->signUpFactory->create(function (): void {
			$this->redirect('Homepage:in');
		});
	}

	public function actionOut(): void {
		$this->getUser()->logout();
		$this->redirect('Homepage:default');
	}

	//Serves for redirection to main page if user is already logged in
	public function actionDefault(): void {
		if($this->getUser()->isLoggedIn()) {
			$this->redirect('Blank:default');
		}
	}

}