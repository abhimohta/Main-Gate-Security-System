<?php
$servername = "localhost";
$username = "root";
$password = "password";
$id = $_POST['idno'];

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//echo "Connected successfully\n";

$sql = "USE Gate_Software";
if($conn->query($sql) === TRUE){
	//echo "Using project DB";
}else{
	//echo "Error in using project DB".$conn->error;
}

$sql = "SELECT * FROM StudentMaster WHERE ID='$id'";
$result = $conn->query($sql);


if ($result->num_rows==1) {
    // output data of each row
	$row = $result->fetch_assoc();
        echo "ID: " . $row["ID"]. "<br>Name: " . $row["Name"]. "<br>Mobile: " . $row["Phone"]. " <br>Room - ". $row["Hostel"]. " " . $row["Room"]. "<br>";
} else {
    echo "Invalid entry";
}

$conn->close();
?> 
