<?php
 
class CharactercreationController extends Controller
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
	
	public function classesbyname() {
		 try {
            $name = $_POST['classname'];
            $class_values = $this->_model->GetClassesBy($name);
            $this->_view->set('classvalues', $class_values);
            $this->_view->set('title', 'Angularjs Example Login');
             
            return $this->_view->output();
             
        } catch (Exception $e) {
            echo "Application error:" . $e->getMessage();
        }
	}
	public function classes () {
		try {
			$classname = $this->_model->GetClasses();
			$this->_view->set('classnames', $classname);
			return $this->_view->output();
		} catch (Exception $e) {
            echo "Application error:" . $e->getMessage();
        }
	}
	
	public function racesbyname() {
		 try {
            $name = $_POST['racename'];
            $race_values = $this->_model->GetRacesBy($name);
            $this->_view->set('racevalues', $race_values);
            $this->_view->set('title', 'Angularjs Example Login');
             
            return $this->_view->output();
             
        } catch (Exception $e) {
            echo "Application error:" . $e->getMessage();
        }
	}
	public function races () {
		try {
			$racename = $this->_model->GetRaces();
			$this->_view->set('racenames', $racename);
			return $this->_view->output();
		} catch (Exception $e) {
            echo "Application error:" . $e->getMessage();
        }
	}
	public function create() {
		try {
			//if($_SERVER['CONTENT_LENGTH'] == 39) {
				$charvalues = $this->_model->CreateChar($_POST);
				$this->_view->set('charvalues', $charvalues);
				return $this->_view->output();
			//}
		}
		catch (Exception $e) {
            echo "Application error:" . $e->getMessage();
        }
		
	}
    
	
    // End
}