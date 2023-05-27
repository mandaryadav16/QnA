<!--Modal to Change Catogery-->
			<a style="cursor: pointer;" data-toggle="modal" data-target="#md"> (Category)</a>
			<div id="md" class="modal fade" >
				<div class="modal-dialog modal-sm" >
					<ul class="list-group">
					<?php 
						//Showing All Catogeries
						$q="select * from questions_cat";
						$result=mysqli_query($con,$q);
						while($row=mysqli_fetch_array($result))
						{
					?>
						<li class="list-group-item">
							<a  href="browse.php?cat=<?php echo $row['cat_id']; ?>" style="color:black;">
								<?php echo $row['cat']; ?>
							</a>
						</li>
					<?php } ?>	
					<!--Showing Recent-->
					<li class="list-group-item">
						<a  href="browse.php" style="color:black;">
							<b>All Questions</b>
						</a>
					</li>
					<!--Showing Popular-->
					<li class="list-group-item">
						<a  href="browse.php?by=popular" style="color:black;">
							<b>Popular</b>
						</a>
					</li>
					</ul>
				</div>
			</div>
<!--Modal to Change Category END-->
