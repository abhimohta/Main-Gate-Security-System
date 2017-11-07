<?php
require 'config/config.php';
$conn = connect($config);
if(!$conn)
	die("Could not connect to database");
?>