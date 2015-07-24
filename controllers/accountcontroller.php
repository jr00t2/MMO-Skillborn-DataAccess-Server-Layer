<?php
 
class AccountController extends Controller
{
    public function __construct($model, $action)
    {
        parent::__construct($model, $action);
        $this->_setModel($model);
    }
     
    public function index()
    {
        try {
             
            $this->_view->set('title', 'Angularjs Example');
             
            return $this->_view->output();
             
        } catch (Exception $e) {
            echo "Application error:" . $e->getMessage();
        }
    }
	
	public function login() {
		 try {
            $email = $_POST['email'];
			$password = md5($_POST['password']);
            $authentication = $this->_model->Login($email, $password);
            $this->_view->set('authentication', $authentication);
            $this->_view->set('title', 'Angularjs Example Login');
             
            return $this->_view->output();
             
        } catch (Exception $e) {
            echo "Application error:" . $e->getMessage();
        }
	}
    
	public function register() {
		 try {
			$email = $_POST['email'];
			$password = md5($_POST['password']);
            $registration = $this->_model->Register($email, $password);
            $this->_view->set('registration', $registration);
            $this->_view->set('title', 'Angularjs Example Login');
             
            return $this->_view->output();
             
        } catch (Exception $e) {
            echo "Application error:" . $e->getMessage();
        }
	}
    
    // End
}