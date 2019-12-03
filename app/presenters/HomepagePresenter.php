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
        $this->setLayout('altLayout');
	}
	
	protected function createComponentSignInForm(): Form
	{
		return $this->signInFactory->create(function (): void {
			$this->restoreRequest($this->backlink);
			$this->redirect('Artists:');
		});
	}
	
	protected function createComponentSignUpForm(): Form
	{
		return $this->signUpFactory->create(function (): void {
			$this->redirect('Homepage:in');
		});
	}

	public function actionOut(): void
	{
		$this->getUser()->logout();
                $this->redirect('Homepage:in');
	}
}