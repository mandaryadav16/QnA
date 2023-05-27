
<nav class="top-nav navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header"> <!----Navbar-Header Start---->
			<button class="navbar-toggle" data-toggle="collapse" data-target="#nav">
				
				<?php for($a=0; $a<3; $a++){?>
				<span class="icon-bar"></span>
				<?php } ?>
				
			</button>
			<a href="#" class="navbar-brand">QnA</a>
			
			<div class="navbar-icons">
				<?php if(isset($_SESSION['email'])){ ?>
					<a href="../home.php"><span class="glyphicon glyphicon-home icon-nav"></span></a>
					<a href="browse.php" title="Browse Question"><span style="font-size:150%;"  class="glyphicon glyphicon-folder-open icon-nav"></span></a>
					<a href="ask.php" title="Ask Question"><span style="font-size:150%;" class="glyphicon glyphicon-question-sign icon-nav"></span></a>
					<a href="#setting" data-toggle="collapse" ><span class="glyphicon glyphicon-menu-hamburger icon-nav"></span></a>
				<?php } else {?>
					<a href="browse.php" title="Browse Question"><span style="font-size:150%;"  class="glyphicon glyphicon-folder-open icon-nav not"></span></a>
					<a href="../index.php" title="Log In"><span style="font-size:150%;"  class="glyphicon glyphicon-log-in icon-nav not"></span></a>
					<a href="../index.php" title="Sign Up"><span style="font-size:150%;"  class="glyphicon glyphicon-user icon-nav not"></span></a>
				<?php } ?>
			</div>
			<div class="collapse navbar-collapse" id="setting">
				<ul class="nav navbar-nav set text-center">
					<li><a href="setting.php">Your Questions </a></li>
					<li><a href="setting.php">Your Answers</a></li>
					<li><a href="setting.php">Account Setting</a></li>
					<li><a href="#">Verify</a></li>
					<li><a href="logout.php">Logout</a></li>
				</ul>
			</div>
		</div><!----End Header --->
		<div class="collapse navbar-collapse" id="nav">

			<!--Showing Navbar Menus -->
			<ul class="nav navbar-nav navbar-menu text-center">
				<?php 
					if(isset($email))
					{
						foreach($nav_menu_texts['Logged_in'] as $key=>$link_text)
						{
				?>
					<li style="padding-left:5px;"><a href="<?php echo $link_text; ?>"><?php echo $key; ?></a></li>
				<?php	
						}
					}
					else
					{
						foreach($nav_menu_texts['Logged_out'] as $key=>$link_text)
						{
				?>
					<li><a href="<?php echo $link_text; ?>"><?php echo $key; ?></a></li>
				<?php			
						}
					}	
				?>
			</ul>
			<div class="navbar-side">
				<form method="GET" class="navbar-form" action="browse.php">
					<div class="input-group">
						<input name="search" type="text" class="search form-control input-sm" placeholder="Search Questions">
						<div class="input-group-btn">
						<button class="search btn btn-danger btn-sm" >Search</button>				
						</div>
					</div>
					<div class="input-group">
					</div>
				</form>
			</div>
		</div>			
	</div><!----End Container --->
</nav>

	
	