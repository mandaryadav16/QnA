<!DOCTYPE html>
<?php
		if(session_id()=="")
		{
			session_start();
		}
		include("Includes/php/connection.php");
		include("Includes/php/array.php");
		include("Includes/php/functions.php");
		if(isset($_SESSION['email']))
		{
			$email=$_SESSION['email'];
			$q="select * from users where email='$email'";
			$result_users=mysqli_query($con,$q) or die(mysqli_error($con));
			$row=mysqli_fetch_array($result_users);
			$id=$row['u_id'];
			$name=$row['Name'];
			$image=$row['image'];
		}
?>
<html>
	<head>
		<?php include("Includes/php/paths.php"); ?>
	</head>
<body>
		<?php include("nav.php"); ?>

	
	