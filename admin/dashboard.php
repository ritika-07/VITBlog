<?php  include('../config.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/head_section.php'); ?>
	<title>Admin | Dashboard</title>
</head>
<body>
	<div class="header">
		<div class="logo">
			<a href="<?php echo BASE_URL .'admin/dashboard.php' ?>">
				<h1>VITBlog - Admin</h1>
			</a>
		</div>
		<?php if (isset($_SESSION['user'])): ?>
			<div class="user-info">
				<span>Welcome <?php echo $_SESSION['user']['username'] ?></span> &nbsp; &nbsp; 
			</div>
		<?php endif ?>

	</div>
	<div class="container dashboard">
		<h1>Welcome</h1>
		<div class="stats">

			<a href="../index.php" class="home">Home</a><br>

			<?php if ($_SESSION['user']['role'] == "Admin"): ?> 
			<a href="users.php" class="users">
				<span>Manage Users</span>
			</a>

			<a href="topics.php" class="topics">
				<span>Manage Topics</span>
			</a>
			<?php endif ?>

			<a href="posts.php" class="posts">
				<span>Manage Posts</span>
			</a>

			<a href="<?php echo BASE_URL . '/logout.php'; ?>" class="logout">Logout</a>
		</div>
		
	</div>
</body>
</html>
