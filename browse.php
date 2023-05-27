<?php include("veiw/header.php");?>

<!---Show Jumbotron -->
<div class="jumbotron text-center jumbo">
	<h1 class="display-3">Ask Questions To Solve Your Problems</h1>
	<div class="lead">A platform through which you can get answers of you common questions from the experienced people.</div>
	<a href="ask.php">
		<button class="btn btn-primary btn-lg button ">Ask</button>
	</a>
</div>
<!---Jumbtron END -->

<!--Container For Questions and Sidebar Starts -->
<div class="container">
	<div class="row">
	

<!--Start-->

<!--Show Questions According to the Popularity (Questions With Most Answer)-->
<?php
if(isset($_GET['by']) AND $_GET['by']=="popular")
{
?>
		<!--Left Side of the Container Starts, Which Contains Questions Row -->
		<div class="col-md-7">
			<h3>Popular Questions</h3> 
			
			<!--Modal to Change Catogery-->
			<?php include("veiw/change_cat_modal.php"); ?>
			<!--Modal to Change Category END-->
			
<?php 
	//To Fetch Popular Questions And The Asking User
	$q="select *, count(a.answer_id) as Total_Ans from user_questions q JOIN user_answers a on q.q_id=a.question_id JOIN users u on q.asked_by=u.u_id group by q.q_id order by Total_Ans desc ";
	
	//Calling Function to Display Question
	display_questions();
}

//END

//Start

//Show Questions According to the Search Term

else if(isset($_GET['search']) AND !empty($_GET['search']))
{
	$search=$_GET['search']
?>
		<!--Left Side of the Container Starts, Which Contains Questions Row -->
		<div class="col-md-7">
			<h3>Search Term:</h3>
			<span><?php echo $search; ?></span>
			
<?php 
	//To Fetch Questions Contain Search Keyword And The Asking User
	$q="select * from user_questions q JOIN users u on q.asked_by=u.u_id where q.question LIKE '%$search%' ";	
	//Calling Function to Display Question
	display_questions();
}

//END


//Start//

//Shows Questions According to Category
else if(isset($_GET['cat']) AND !empty($_GET['cat'])){

$cat=$_GET['cat'];



//Getting Category Name From Cat Id to Display It in Heading
$q="select * from questions_cat where cat_id='$cat'";
$result=mysqli_query($con,$q);
$row=mysqli_fetch_array($result);
	
?>

		<!--Left Side of the Container Starts, Which Contains Questions Row -->
		<div class="col-md-7">
			<h3><?php echo $row['cat']; ?> Questions</h3> 
			
			<!--Modal to Change Catogery-->
			<?php include("veiw/change_cat_modal.php"); ?>
			<!--Modal to Change Category END-->
			
<?php 
	//To Fetch Questions And The Asking User
	$q="select * from user_questions q JOIN users u on q.asked_by=u.u_id where q.cat_id='$cat'";
	
	//Calling the Function To Display Question
	display_questions();
}

//END//


//Start//

//Show Recent Questions
else {	?>

		<!--Left Side of the Container Starts, Which Contains Questions Row -->
		<div class="col-md-7">
			<h3>All Questions</h3> 
			
			<!--Modal to Change Catogery-->
			<?php include("veiw/change_cat_modal.php"); ?>
			<!--Modal to Change Category END-->
			
<?php 
	//To Fetch Questions And The Asking User
	$q="select * from user_questions q JOIN users u on q.asked_by=u.u_id";
	
	//Calling Function to Display Question
	display_questions();
}

?>
<!--END-->

		</div>
<?php include("veiw/sidebar.php"); ?>
</body>
</html>
