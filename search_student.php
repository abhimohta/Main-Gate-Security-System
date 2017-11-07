<?php
session_start();

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
						<h2><br><br>Search Student</a></h2>
					</div>
					</section>
					<section>
					<div align="right">
						<img src="./templated-prism/images/bits-logo.png" />
					</div>
					</section>
				</div>
			</section>
			<section id="two" class="wrapper style2 alt">
				<div class="inner">
					<div class="spotlight">
			
							<div class="content">
								
							<form method="post" action="lookup_student.php">
							<label> ID Number </label>
							<input type="text" name="idno" maxlength="12" required />
							<br />
							<input type="submit" value="Search" class="button special" />
							</form>
							</div>
					</div>
				</div>
			</section>
			
			<ul class="actions special"><li><form method="post" action="index.php"><input type="submit" value="Main Page" class="button special" /></form>"
	</body>
	</html>
