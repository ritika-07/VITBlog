<?php if (isset($_SESSION['user']['username'])) { ?>
	<div class="logged_in_info">
		<span><h3>Welcome <?php echo $_SESSION['user']['username'] ?></h3></span> <br>
		<span><a href="admin/dashboard.php" style="background-color: #F39C12;
		color: white;
		padding: 10px;
		border-radius: 3px;
		transition: all .3s;" >Dashboard</a></span> 
		<span><a href="logout.php" class="log" style="background-color: #E74C3C;
		color: white;
		padding: 10px;
		border-radius: 3px;
		transition: all .3s;">Logout</a></span>
	</div>
<?php }else{ ?>
	
	<div class="banner">
		<div class="welcome_msg">
			<h1>VIT University, Vellore</h1>
			<p> 
			    An exclusive blog site that aims<br> 
			    to create a student community <br> 
			    for VIT students.<br>
				<span>Designed by: Ritika and Nitish</span>
			</p>
			<a href="register.php" class="btn">Join us!</a>
		</div>

		<div class="login_div">
			<form action="<?php echo BASE_URL . 'index.php'; ?>" method="post" >
				<h2>Login</h2>
				<div style="width: 60%; margin: 0px auto;">
					<?php include(ROOT_PATH . '/includes/errors.php') ?>
				</div>
				<input type="text" name="username" value="<?php echo $username; ?>" placeholder="Username" class="home-input">
				<input type="password" name="password"  placeholder="Password" class="home-input"> 
				<button class="btn" type="submit" name="login_btn">Sign in</button>
			</form>
		</div>
</div>
<?php } ?>
