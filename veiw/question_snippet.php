			<!--Row Start For Questions. Each Row Will Have a Individual Question -->
			<div class="row">
				<div class="col-md-10">
					<hr>
					<span style=" font-family: 'Roboto', sans-serif;">
						<a style="text-decoration:none; color:black;" href="question.php?qid=<?php echo $question_id; ?>">
							<h4 style="line-height:1.5em; "><b></b><?php echo $question; ?></b></h4>
						</a>
					</span>
					<p style="font-size:90%; font-family: 'Montserrat', sans-serif;">
						Asked By <?php echo $name; ?>
					</p>
					
					<!--Read More Should Only Be Displayed Only if the Question Contain Description-->
					<?php if(!empty($description)) {?>
					<p style="  font-family: 'Roboto', sans-serif;">
						<?php echo $description."..."; ?>
					</p>
					<?php } ?>
					<!--Read More End-->
					
					<h4 style="float:left;"><?php echo $count; ?> Answers</h4>
						<a href="question.php?qid=<?php echo $question_id; ?>">
							<button style="margin-left:10px; margin-top:5px;" class="btn btn-primary btn-sm">
								Add Your Answer
							</button>
						</a>

				</div>
			</div>