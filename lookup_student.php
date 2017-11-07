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
					<div align="left"><h2>Student Details</a></h2>
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
        $fathername=$row['father_name'];
        $fathernum=$row['father_phone'];
        echo "<section id=\"one\" class=\"wrapper\">
				<div class=\"inner split\">
					<section>
						<img src=\"./templated-prism/images/ID Pics/$id.jpg\" height=\"200\" width=\"200\"/>
				</section>
					<section>
						<ul class=\"checklist\">
							<li>Name: $name</li>
							<li>Hostel: $hostel $room</li>
							<li>Mobile: $phone</li>
							<li>Father's Name: $fathername</li>
							<li>Father's Number: $fathernum</li>
						</ul>
					</section>
				
				
				</div>
			</section>";
}else
{
	echo "<center><b>Invalid ID Number</b></center>";
}

echo "<ul class=\"actions special\"><li><form method=\"post\" action=\"index.php\"><input type=\"submit\" value=\"Main Page\" class=\"button special\" /></form></li><li><form method=\"post\" action=\"search_student.php\"><input type=\"submit\" value=\"Search Student\" class=\"button special\" /></form>";
$conn->close();
?>

</body>
</html>
