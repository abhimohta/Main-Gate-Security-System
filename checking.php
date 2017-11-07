<?php
session_start();

if(!isset($_SESSION['userid']))
	header('Location: login.php'); 

require 'models/functions.php';
require 'models/connect.php';

$id = $_POST['idno'];
$place = $_POST['place'];

        $_SESSION['idno'] = $id;
        $_SESSION['place'] = $place;


$sql = "USE swd";
if($conn->query($sql) === TRUE){
	//echo "Using project DB";
}else{
	//echo "Error in using project DB".$conn->error;
}

$sql = "SELECT * FROM InOutDetails WHERE ID='$id' AND InDate='0000-00-00' AND InTime='00:00:00';";
$result = $conn->query($sql);
if($result->num_rows==1){
	header('Location: coming_back.php'); die;
}else
{
	header('Location: going_out.php');die;
}
?>
