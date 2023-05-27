<?php 
	session_start();
	//This Page Will Only be displayed to logged in user
	if (!isset($_SESSION['email'])) {
		header('location:browse.php');
		die();
	}
	
	include("veiw/header.php");
	
	//Insert the Question Into the Database After Submit Button Clicked.
	if(isset($_POST['submit']))
	{
		$cat_id=$_POST['cat'];
		$question=$_POST['ques'];
		$des=$_POST['des'];
		$question=$_POST['ques'];
		$asked_by=$id;
		$q="insert into user_questions(cat_id,question,description,asked_by) values ($cat_id,'$question','$des',$asked_by)";
		$result=mysqli_query($con,$q) or die(mysqli_error($con));
		$last_id = mysqli_insert_id($con);
		
		//If Successful Then Redirect User to That Question on Question Page
		if($result)
		{
			header('location:question.php?qid='.$last_id);
			
			
		}
	}
	
	
?>

<div class="container without-jumbo">
	<div class="row">
		
		<!--ASK Question Column Starts Here-->
		<div class="col-md-7">
			<div class="page-header">
				<h3>Ask Question</h3> 
			</div>
			<div class="row">
				<div class="col-md-10">
					
					<!--Form Starts Here-->
					<form method="post" action="" class="form-horizontal" id="quest_form">
						<div class="form-group">
							<label class="control-label col-md-2">Question:</label>
							<div class="col-md-10">
								<input id="question" name="ques" type="text" class="form-control ">
								<div id="err_ques" style="display:none; color:red;">Please Enter Your Question!</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-2">Category</label>
							<div class="col-md-10">
								<select name="cat" class="form-control" id="catagory">
									<option>Category</option>
									<?php
										$q="select * from questions_cat";
										$result=mysqli_query($con,$q);
										while($row=mysqli_fetch_array($result)){
									?>
									<option value="<?php echo $row['cat_id']; ?>"><?php echo $row['cat']; ?></option>
									<?php } ?>
								</select>
								<div id="err_cat" style="display:none">Please select a Category</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-2">Description:</label>
							<div class="col-md-10">
							<textarea name="des" class="form-control" cols="10" rows="7"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-2"></label>
							<div class="col-md-10">
								<button name="submit" class="btn btn-primary btn-sm">Add Question</button>
							</div>
						</div>
					</form>
					<!---Form Ends Here-->
					
				</div>
			</div>
		</div><!---ASK Question Column Ends Here-->
		<?php include("veiw/sidebar.php"); ?>
		
	<!-- <script src="Includes/js/ask_question.js"></script> -->
</body>
</html>

