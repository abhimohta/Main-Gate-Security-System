<html>
	<head>
		<title>BITS Pilani Goa Campus Security Software</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="templated-prism/assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body>

<!--		<!-- Banner -->
			<section id="banner">
				<div class="inner split">
					<section>
					<div align="left"><h2>Students Off Campus on Leave</a></h2>
					</div>
					</section>
					<section>
					<div align="right">
						<img src="./templated-prism/images/bits-logo.png" />
					</div>
					</section>
				</div>
			</section>
<?php
session_start();

if(!isset($_SESSION['userid']))
	header('Location: login.php'); 

require 'models/functions.php';
require 'models/connect.php';


$sql = "USE swd";
if($conn->query($sql) === TRUE){
	//echo "Using project DB";
}else{
	//echo "Error in using project DB".$conn->error;
}

$sql = "SELECT * FROM InOutDetails WHERE InDate='0000-00-00' AND InTime='00:00:00' AND OnLeave=1;";
$result = $conn->query($sql);
//echo "<h1>Students Off Campus - Leave</h1>";
if($result->num_rows>=1){
	echo "<table border=1>";
	echo "<tr><th>ExitID</th><th>ID Number</th><th>Name</th><th>Phone</th><th>Hostel</th><th>Room</th><th>Place</th><th>OutDate</th><th>OutTime</th><th>InDate</th><th>InTime</th><th>OnCampus</th><th>OnLeave</th></tr>";
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
	$exitid   = $row['exit_id'];
 	$id = $row['ID'];
        $name=$row['Name'];
        $phone=$row['Phone'];
        $hostel=$row['Hostel'];
        $room=$row['Room'];
        $place=$row['Place'];;
        $outdate=$row['OutDate'];
	$outtime=$row['OutTime'];
	$indate=$row['InDate'];
	$intime=$row['InTime'];
	$oncampus=$row['OnCampus'];
	if($oncampus==1)
		$camp = "Yes";
	else
		$camp = "No";
	$onleave=$row['OnLeave'];
	if($onleave==1)
		$leav = "Yes";
	else
		$leav = "No";
 	echo "<tr><td>".$exitid."</td><td>".$id."</td><td>".$name."</td><td>".$phone."</td><td>".$hostel."</td><td>".$room."</td><td>".$place."</td><td>".$outdate."</td><td>".$outtime."</td><td>".$indate."</td><td>".$intime."</td><td>".$camp."</td><td>".$leav."</td></tr>";
}
 echo "</table>";
}else{
	echo "<center><b>No one on leave!</b></center>";
}
echo "<ul class=\"actions special\"><li><form method=\"post\" action=\"index.php\"><input type=\"submit\" value=\"Main Page\" class=\"button special\" /></form></li><li><form method=\"post\" action=\"search_student.html\"><input type=\"submit\" value=\"Search Student\" class=\"button special\" /></form></li>";
$conn->close();
?> 

</body>
</html>
