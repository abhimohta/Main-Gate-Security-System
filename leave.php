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
					<div align="left"><h2>Leave</a></h2>
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

$id = $_POST['idno'];

$sql = "USE swd";
if($conn->query($sql) === TRUE){
	//echo "Using project DB";
}else{
	//echo "Error in using project DB".$conn->error;
}

$check = "SELECT * FROM InOutDetails WHERE ID='$id' AND InDate='0000-00-00' AND InTime='00:00:00';";
$checkresult = $conn->query($check);
if($checkresult->num_rows==0)
{
$login_extract = "SELECT * FROM student_info WHERE id='$id'";
$result_login = $conn->query($login_extract);
$row_login = $result_login->fetch_assoc();
$login = $row_login['login_id'];
$checkdate=strtotime('today midnight')*1000;
$enddate=$checkdate+86400000;
//use login now!
$sql = "SELECT * FROM leave_requests WHERE login_id='$login' AND start_date>='$checkdate' AND start_date<='$enddate' AND approved=1;";
$result = $conn->query($sql);
if($result->num_rows==1){
	$row = $result->fetch_assoc();
	$ID=$row['login_id'];
	//$name=$row['name'];
	$leaveid = $row['leave_id'];
        $startdate= date('Y-m-d',$row['start_date']/1000);
        //echo $startdate;
	$enddate= date('Y-m-d',$row['end_date']/1000);
	$approved=$row['approved'];
	$place=$row['address'];
	
	$sql1 = "SELECT * FROM student_info WHERE id='$id'";
	$result1 = $conn->query($sql1);


	if ($result1->num_rows==1) {
    	// output data of each row
	$row1 = $result1->fetch_assoc();
        $id = $row1['id'];
        $name=$row1['student_name'];
        $phone=$row1['phone'];
        $hostel=$row1['hostel'];
        $room=$row1['hostel_room'];
        //$place=NULL;
        $outdate= date('Y-m-d');
	$outtime= date('H:i:s');
	$indate=NULL;
	$intime=NULL;
	$oncampus=false;
	$onleave=1;
	$update_db1="INSERT INTO InOutDetails VALUES('$id', '$name', '$hostel', '$room', '$phone', '$place', '$outdate', '$outtime', '$indate', '$intime', '$oncampus', NULL,'$onleave');";
	$update_db = "INSERT INTO LeaveTableGate VALUES('$leaveid', '$id', '$name', '$startdate', '$enddate', '$approved');";
	$conn->query($update_db);
	$conn->query($update_db1);
	
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
	/*$last_id=$conn->insert_id;
	$update_leave="INSERT INTO JoinLeave VALUES('$last_id', '$leaveid', '$oncampus');
	$conn->query($update_leave);*/
	}
	
}else{
	echo "<center><b>Leave Not Approved!</b></center>";
}
}else
{
	echo "<center><b>Student already out</b></center>";
}

echo "<ul class=\"actions special\"><li><form method=\"post\" action=\"index.php\"><input type=\"submit\" value=\"Main Page\" class=\"button special\" /></form>";
$conn->close();
?> 


</body>
</html>
