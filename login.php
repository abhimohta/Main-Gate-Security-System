<?php
session_start();

require 'models/functions.php';
require 'models/connect.php';

if ($_SERVER['REQUEST_METHOD']=="POST"){
	if(isset($_POST['userid']) && isset($_POST['password'])){
		if($userid==$_POST['userid'] && $password==$_POST['password']){
			$_SESSION['userid']=$userid;	
			header("Location: index.php");
		}
		else
			$error="Invalid Credentials";
	}
}

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
						<h2>Gate Software Login</a></h2><br>
					</div>
					</section>
					<section>
					<div>
						<center><img src="templated-prism/images/bits-logo.png" />
					</div>
					</section>
				</div>
			</banner>
			
			<section id="two" class="wrapper style2 alt">
				
			<div class="content">
			<form name="login" method="post">
            		Username<input type="text" name="userid"/>
            		Password<input type="password" name="password"/><br>
            		<?php
            			if(isset($error))
            				echo $error;
            		?>
            		<input type="submit" value="Submit" class="button special" />
       			</form>
       			</div>
						
						

</body>
</html>

					
