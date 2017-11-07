<?php
session_start();
include 'config.php';
if ($_SERVER['REQUEST_METHOD']=="POST"){
	if(isset($_POST['userid']) && isset($_POST['password'])){
		if($userid==$_POST['userid'] && $password==$_POST['password']){
			$_SESSION['userid']=$userid;	
			header("Location: index.php");
		}
		else
			$error="Invalid Credentials";
	}
}

?>
