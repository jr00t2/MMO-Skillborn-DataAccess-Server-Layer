<?php
class CharactercreationModel extends Model {
	public function GetClassesBy($name) {
		$sql = "SELECT * FROM classes WHERE name = '$name' LIMIT 1";
		$this->_setSql($sql);
		$class = $this->getAll();
		if (empty($class))
        {
            return "This Class doesnt exist";
        }
        else { 
			return $class;
		}
	} //end of GetClassesBy
	public function GetClasses() {
		$sql = "SELECT name FROM classes ORDER BY name ASC";
		$this->_setSql($sql);
		$classes = $this->getAll();
		
		return $classes;	
	} //end of GetClasses
	
	public function GetRacesBy($name) {
		$sql = "SELECT * FROM races WHERE name = '$name' LIMIT 1";
		$this->_setSql($sql);
		$race = $this->getAll();
		if (empty($race))
        {
            return "This Race doesnt exist";
        }
        else { 
			return $race;
		}
	} //end of GetRacesBy
	public function GetRaces() {
		$sql = "SELECT name FROM races ORDER BY name ASC";
		$this->_setSql($sql);
		$races = $this->getAll();
		
		return $races;	
	} //end of GetRaces
}