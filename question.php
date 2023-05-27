<?php 
	include("veiw/header.php"); 

	// Check if the 'qid' parameter is set
	if(isset($_GET['qid'])){
		$q_id=$_GET['qid'];

		// Query to get the question details
		$q="select *,count(answer_id) as Total_Ans from user_questions q LEFT JOIN user_answers a on q.q_id=a.question_id join users u on q.asked_by=u.u_id group by q.q_id,q.asked_by having q.q_id='$q_id'";
		$result=mysqli_query($con,$q);
		$row=mysqli_fetch_array($result);

		// Check if the row is valid
		if($row){
			$question=$row['question'];
			$des=$row['description'];
			$asked_by=$row['Name'];
			$total_ans=$row['Total_Ans'];	
		}
		else{
			// Handle invalid question ID
			echo "Invalid question ID";
			exit;
		}
	}
	else{
		// Handle missing question ID
		echo "Question ID not specified";
		exit;
	}
?>

<!-- Rest of your HTML code -->




	
<div class="container">
	<div class="row">
			<!--Question And Its Answer Portion Column-->
	<div class="col-md-7">
	<!--Question Heading in H4-->
	<div class="page-header">
		<span style="font-family: 'Roboto', sans-serif;">
		<h4 style="line-height:1.5em;"><?php echo $question."?"; ?></h4>
		</span>
	</div>
	<!--Question Heading Portion Close-->

	<div class="row">
		<div class="col-md-10">
		<!--Question Asked By-->
		<p style="font-size:90%; font-family: 'Montserrat', sans-serif;">
			Asked By <?php echo $asked_by; ?>
		</p>
		<!--Question Description-->
		<p style="font-family: 'Roboto', sans-serif;">
			<?php echo $des; ?>
		</p>

		<!--Form to Add Answer Through Ajax-->

		<?php if(isset($_SESSION['email'])){ ?>
			<form id="form-Ans" style="display:none;">
			<textarea id="ans" class="form-control" style=" border-radius:0; box-shadow:none;"></textarea>
			<input type="hidden" id="q_id" value="<?php echo $q_id; ?>">
			<input type="hidden" id="u_id" value="<?php echo $id; ?>">
			<input type="hidden" id="u_name" value="<?php echo $name; ?>">
			</form>
			<button onclick="addAns()" style="margin-top:5px; display:none;" id="btn1" class="btn btn-primary btn-sm" >Add Answer</button>
			<button  style="margin-top:5px;" class="btn btn-primary btn-sm" id="btn2" onclick="show()">Add Your Answer</button>

		<?php } ?>
		<!--Total Answer Of the Question-->
		<div class="page-header" >    
			<h4><?php echo $total_ans; ?> Answers</h4>
		</div>

		<?php
			//Query to Get Answer and User Who Answered It.
			$q="Select * from user_answers a JOIN users u on a.ans_by=u.u_id where a.question_id='$q_id' order by a.answer_id desc";
			$result=mysqli_query($con,$q);

			//Check to Echo the Answers Div If Rows are Zero Because Then Below loop Will Not Run SO.
			if(mysqli_num_rows($result)==0){
			echo "<div id='answers'></div>";
			}
			while($row=mysqli_fetch_array($result)){
		?>

		<div id="answers">
			<!--Answered By-->
			<p style="font-size:90%; font-family: 'Montserrat', sans-serif;">
			Answered By <?php echo $row['Name']; ?>
			</p>            

			<!--Answer Description-->
			<p style="font-family: 'Roboto', sans-serif;">
			<?php echo $row['answer']; ?>
			</p>
			<hr>

			<!-- Add the like button -->
			<!-- Answered By -->


			<button onclick="likeAnswer(<?php echo $row['answer_id']; ?>)" class="btn btn-primary btn-sm">Like</button>

<!-- Like Count -->
<span id="like-count-<?php echo $row['answer_id']; ?>"><?php echo $row['like_count']; ?></span> Likes
<br>
<br>
<br>


		</div>
		<?php } ?>
		</div>
	</div>
	</div><!--Question And Its Answer Portion Ends-->

		<?php include("veiw/sidebar.php"); ?>
		
		<!--Javascript contain function for this file including Ajax handling-->
		<script src="Includes/js/add_question.js"></script>
		<script src="likeAnswer.js"></script>
</body>
</html>
	
