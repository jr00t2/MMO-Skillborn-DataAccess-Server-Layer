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
	
	public function CreateChar($data){
		$race = $data['race'];
		$class = $data['class'];
		
		$presql1 = "SELECT id FROM races WHERE name = '". $race ."' LIMIT 1";
		$presql2 = "SELECT id FROM classes WHERE name = '". $class ."' LIMIT 1";
		
		$this->_setSql($presql1);
		$race = $this->getAll();
		$this->_setSql($presql2);
		$class = $this->getAll();
		
		$sql = "INSERT INTO characters 
		(charname, f_raceId, f_classId, axe, dagger,
		unarmed, hammer, polearm, spear, staff, sword,
		archery, crossbow, sling, thrown, armor, dualweapon,
		shield, bardic, conjuring, druidic, illusion, necromancy,
		shamanic, sorcery, summoning, spellcraft,focus, armorsmithing,
		tailoring, fletching, weaponsmithing, lapidary, f_userId, developmentpoints,
		strength, intelligence, constitution, dexterity) 
		VALUES
		('".$data['charname']."', ".$race['0']['id'].", ".$class['0']['id'].",
		".$data['axe'].",".$data['dagger'].", ".$data['unarmed'].", ".$data['hammer'].", ".$data['polearm'].", ".$data['spear'].", ".$data['staff'].",
		".$data['sword'].", ".$data['archery'].", ".$data['crossbow'].", ".$data['sling'].", ".$data['thrown'].", ".$data['armor'].",
		".$data['dualweapon'].", ".$data['shield'].", ".$data['bardic'].", ".$data['conjuring'].", ".$data['druidic'].", ".$data['illusion'].",
		".$data['necromancy'].", ".$data['shamanic'].", ".$data['sorcery'].", ".$data['summoning'].", ".$data['spellcraft'].", ".$data['focus'].",
		".$data['armorsmithing'].", ".$data['tailoring'].", ".$data['fletching'].", ".$data['weaponsmithing'].", ".$data['lapidary'].", ".$data['accountid'].",
		".$data['developmentpoints'].", ".$data['strength'].", ".$data['intelligence'].", ".$data['constitution'].", ".$data['dexterity'].")";
		$this->_setSql($sql);
		$query = $this->execute();
		return $sql;
	}
}