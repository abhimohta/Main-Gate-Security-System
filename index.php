<?php
session_start();

require 'models/functions.php';
require 'models/connect.php';

if(!isset($_SESSION['userid']))
	header('Location: login.php'); 
?>

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
					<div align="left">
						<h2>Gate Software</a></h2><br>
						<h3><center><font color = "black"><a href = "#Normal">Normal Day In and Out</a></h3>
						<h3><center><font color = "black"><a href = "#Day Pass">Day Pass</a></h3>
						<h3><center><font color = "black"><a href = "#Leave">Overnight Leave</a></h3>
						<h3><center><font color = "black"><a href = "#Others">Lists</a></h3>
					</div>
					</section>
					<section>
					<div>
						<center><img src="templated-prism/images/bits-logo.png" /><br><br>
						<form method="get" action="logout.php">
						<input type="submit" value="Logout" class="button special">
						</form>
					</div>
					</section>
				</div>
			</banner>

		<!-- Two -->
			<section id="two" class="wrapper style2 alt">
				<div class="inner">
					<div class="spotlight">
						<div class="image">
							<img src="templated-prism/images/pic01.jpg" alt="" />
						</div>
						<div class="content">
							<h3><a name = "Normal"></a>Normal Day in and out</h3>
							<form method="post" action="checking.php">
							<label> ID Number </label>
							<input type="text" name="idno" maxlength="12" required/>
							<label> Place </label>
							<input type="text" name="place" maxlength="10"/>
							<br />
							<input type="submit" value="Search" class="button special" />
							</form>
						</div>
					</div>
					<div class="spotlight">
						<div class="image">
							<img src="templated-prism/images/pic02.jpg" />
						</div>
						<div class="content">
							<h3><a name = "Day Pass"></a>Day Pass</h3>
							<form method="post" action="daypass.php">
							<label> ID Number </label>
							<input type="text" name="idno" maxlength="12" required />
							<br />
							<input type="submit" value="Pass the day!" class="button special"/>
							</form>
						</div>
					</div>
					<div class="spotlight">
						<div class="image">
							<img src="templated-prism/images/pic03.png" alt="" />
						</div>
						<div class="content">
							<h3><a name = "Leave"></a>Overnight Leave</h3>
							<form method="post" action="leave.php">
							<label> ID Number </label>
							<input type="text" name="idno" maxlength="12" required/>
							<br />
							<input type="submit" value="Leave!" class="button special"/>
							</form>
						</div>
					</div>
					<ul class="actions special">
						<li><a name = "Others"></a><form method="post" action="offcampus.php">
					<input type="submit" value="Show Students Off Campus" class="button alt"/>
					</form></li>
					<li><form method="post" action="offcampus_leave.php">
					<input type="submit" value="Show Students on leave" /></form></li>
					<li><form method="post" action="search_student.php">
					<input type="submit" value="Student Details" />
					</form></li>
					</ul>
				</div>
			</section>


		<!-- Footer -->
			<footer id="footer">
				<div class="copyright">
					&copy; Untitled. All rights reserved. BITS Pilani K K Birla Goa Campus property.</a>.
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>
