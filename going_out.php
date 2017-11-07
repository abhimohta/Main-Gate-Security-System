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
					<div align="left"><h2>Going Out</a></h2>
					</div>
					</section>
					<section>
					<div align="right">
						<img src="templated-prism/images/bits-logo.png" />
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


$id = $_SESSION['idno'];
$place1 = $_SESSION['place'];
echo $place;

$sql = "USE swd";
if($conn->query($sql) === TRUE){
	//echo "Using project DB";
}else{
	//echo "Error in using project DB".$conn->error;
}
$hol_check=0;
$today = date('Y-m-d');
//echo $today;
$sql = "SELECT * FROM Holidays WHERE HolDate = '$today'";
$result = $conn->query($sql);
if ($result->num_rows==1){
	$hol_check=1;
}

$valid_time=0;
$day_check = date("w");
if($hol_check==1){
	$sql = "SELECT * FROM Gate_Timings WHERE Day='Holiday'";
	$result = $conn->query($sql);
	if ($result->num_rows==1){
		$row = $result->fetch_assoc();
		$out_valid_hol = $row['Out_Time'];
		//echo $out_valid_hol;
		$in_valid_hol = $row['In_Time'];
		//echo $in_valid_hol;
	}
	//echo "Entered Holiday";
	$curr_time = time();
	if($curr_time<=strtotime($in_valid_hol) && $curr_time>=strtotime($out_valid_hol))
		$valid_time=1;
	else
		$valid_time=0;
}
else if($day_check==0){
	$sql = "SELECT * FROM Gate_Timings WHERE Day='Sunday'";
	$result = $conn->query($sql);
	if ($result->num_rows==1){
		$row = $result->fetch_assoc();
		$out_valid_sun = $row['Out_Time'];
		$in_valid_sun = $row['In_Time'];
	}
	//echo "Entered Sunday";
	$curr_time = time();
	if($curr_time<=strtotime($in_valid_sun) && $curr_time>=strtotime($out_valid_sun))
		$valid_time=1;
	else
		$valid_time=0;
}
else if($day_check==6){
	$sql = "SELECT * FROM Gate_Timings WHERE Day='Saturday'";
	$result = $conn->query($sql);
	if ($result->num_rows==1){
		$row = $result->fetch_assoc();
		$out_valid_sat = $row['Out_Time'];
		$in_valid_sat = $row['In_Time'];
	}
	//echo "Entered Saturday";
	$curr_time = time();
	if($curr_time >= strtotime($out_valid_sat) && $curr_time <= strtotime($in_valid_sat))
		$valid_time=1;
	else
		$valid_time=0;
}
else{
	$sql = "SELECT * FROM Gate_Timings WHERE Day='Other'";
	$result = $conn->query($sql);
	if ($result->num_rows==1){
		$row = $result->fetch_assoc();
		$out_valid_oth = $row['Out_Time'];
		$in_valid_oth = $row['In_Time'];
	}
	$curr_time = time();
	//echo "Entered Other";
	if($curr_time >= strtotime($out_valid_oth) && $curr_time <= strtotime($in_valid_oth))
		$valid_time=1;
	else
		$valid_time=0;
}

if($valid_time == 1)
{
$sql = "SELECT * FROM student_info WHERE id='$id'";
$result = $conn->query($sql);


if ($result->num_rows==1) {
    // output data of each row
	$row = $result->fetch_assoc();
        $id = $row['id'];
        $name=$row['student_name'];
        $phone=$row['phone'];
        $hostel=$row['hostel'];
        $room=$row['hostel_room'];
	$place=$place1;
        $outdate= date('Y-m-d');
	$outtime= date('H:i:s');
	$indate=NULL;
	$intime=NULL;
	$oncampus=false;
	$onleave=0;
	$update_db="INSERT INTO InOutDetails VALUES('$id', '$name', '$hostel', '$room', '$phone', '$place', '$outdate', '$outtime', '$indate', '$intime', '$oncampus', NULL, '$onleave');";
	
	$conn->query($update_db);
	
	echo "<section id=\"one\" class=\"wrapper\">
				<div class=\"inner split\">
					<section>
						<img src=\"./templated-prism/images/ID Pics/$id.jpg\" height=\"200\" width=\"200\"/>
				</section>
					<section>
						<ul class=\"checklist\">
							<li>Name: $name</li>
							<li>Hostel: $hostel $room</li>
							<li>Place: $place</li>
							<li>Mobile: $phone</li>
						</ul>
					</section>
				
				
				</div>
			</section>";

	
} else {
    echo "<center><b>Invalid entry</b></center>";
}
}
else {
	echo "<center><b>You cannot leave now - Go back and study!</b></center>";
}

echo "<ul class=\"actions special\"><li><form method=\"post\" action=\"index.php\"><input type=\"submit\" value=\"Main Page\" class=\"button special\" /></form>";
$conn->close();
?> 

</body>
</html>
