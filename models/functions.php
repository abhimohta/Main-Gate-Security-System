<?php
function connect($config){
	$conn = new mysqli($config['servername'], $config['username'], $config['password']);
	// Check connection
	if ($conn->connect_error) 
    	return false;
    else
    	return $conn;
}
?>
