<?php
class AccountModel extends Model {
	public function Login ($email, $password) {
		$sql = "SELECT username, calculatedResult, id FROM Users WHERE username = '$email' AND password = '$password'";
		$this->_setSql($sql);
		$user = $this->getAll();
		if (empty($user))
        {
            $user['success'] = false;
        }
        else { 
			$user['cr'] = $this->mc_decrypt($user[0]['calculatedResult'], $this->getPbKey());
			$user['success'] = true;
			return $user;
		}
	} //end of login
	
	public function Register ($email, $password) {
		$calculatedResult = $this->mc_encrypt(rand(1000, 99999),$this->getPbKey());
		$sql = "INSERT INTO Users (username, password, calculatedResult) VALUES ('$email', '$password', '$calculatedResult')";
		$this->_setSql($sql);
		$user = $this->execute();
 
        return $this->mc_decrypt($calculatedResult, $this->getPbKey());
	}
	
	
	
}