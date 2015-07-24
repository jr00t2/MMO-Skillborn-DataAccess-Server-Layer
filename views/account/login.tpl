<?php
ini_set('display_errors',0);
error_reporting(0);
if($authentication['success']) {
	echo "Login";
	 echo ":";
	 echo $authentication[0]['username'];
	 echo ":";
	 echo $authentication[0]['id'];
	 echo ":";
	 echo $authentication['cr'];
 }
else {
	echo "Benutzername oder Passwort falsch!";
} 
?>