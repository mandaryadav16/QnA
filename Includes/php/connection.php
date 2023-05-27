<?php

if( preg_match ("/connection.php/", $_SERVER['PHP_SELF']) )
{
	
	die("Access Denied, You Are Not Authorized to Access This Page");
	
}


define("HOST","localhost");
define("PASS","");
define("DB","qna");
define("USER","root");

$con=mysqli_connect(HOST,USER,PASS);
$database=mysqli_select_db($con,DB);

if(!$con)
{
	die("Connection Failed <br>".mysqli_connect_error());
}

if(!$database)
{
	die("Database Connection Failed<br>".mysqli_error($con));
}

?>