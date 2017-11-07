<?php
$servername = "localhost";
$username = "root";
$password = "password";
$id = $_POST['idno'];
$name = $_POST['name'];
$mobile = $_POST['mobile'];
$hostel = $_POST['hostel'];
$room = $_POST['room'];

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//echo "Connected successfully\n";

$sql = "USE project";
if($conn->query($sql) === TRUE){
	//echo "Using project DB";
}else{
	//echo "Error in using project DB".$conn->error;
}

$sql = "INSERT INTO StudentDetails(ID, Name, MobileNo, Hostel, RoomNo) VALUES ('$id', '$name', '$mobile', '$hostel', '$room')";
$conn->query($sql); 

$conn->close();
?> 
