<?php 
	// variable declaration
	$username = "";
	$email    = "";
	$errors = array(); 


	// REGISTER USER
	if (isset($_POST['reg_user'])) {
		// receive all input values from the form

		// bring the global db connect object into function
		global $conn;

		$val = trim($_POST['username']); // remove empty space sorrounding string
		$val = mysqli_real_escape_string($conn, $_POST['username']);

		$username = $val;

		$val = trim($_POST['email']); // remove empty space sorrounding string
		$val = mysqli_real_escape_string($conn, $_POST['email']);

		$email = $val;

		$val = trim($_POST['password_1']); // remove empty space sorrounding string
		$val = mysqli_real_escape_string($conn, $_POST['password_1']);

		$password_1 = $val;

		$val = trim($_POST['password_2']); // remove empty space sorrounding string
		$val = mysqli_real_escape_string($conn, $_POST['password_2']);

		$password_2 = $val;

		// form validation: ensure that the form is correctly filled
		if (empty($username)) {  array_push($errors, "Uhmm...We are going to need your username"); }
		if (empty($email)) { array_push($errors, "Oops.. Email is missing"); }
		if (empty($password_1)) { array_push($errors, "uh-oh you forgot the password"); }
		if ($password_1 != $password_2) { array_push($errors, "The two passwords do not match");}

		// Ensure that no user is registered twice. 
		// the email and usernames should be unique
		$user_check_query = "SELECT * FROM users WHERE username='$username' 
								OR email='$email' LIMIT 1";

		$result = mysqli_query($conn, $user_check_query);
		$user = mysqli_fetch_assoc($result);

		if ($user) { // if user exists
			if ($user['username'] === $username) {
			  array_push($errors, "Username already exists");
			}
			if ($user['email'] === $email) {
			  array_push($errors, "Email already exists");
			}
		}
		// register user if there are no errors in the form
		if (count($errors) == 0) {
			$password = md5($password_1);//encrypt the password before saving in the database
			$query = "INSERT INTO users (username, email, password, created_at, updated_at) 
					  VALUES('$username', '$email', '$password', now(), now())";
			mysqli_query($conn, $query);

			// get id of created user
			$reg_user_id = mysqli_insert_id($conn); 

			// put logged in user into session array
			$_SESSION['user'] = getUserById($reg_user_id);

			// if user is admin, redirect to admin area
			if ( in_array($_SESSION['user']['role'], ["Admin", "Author"])) {
				$_SESSION['message'] = "You are now logged in";
				// redirect to admin area
				header('location: ' . BASE_URL . 'admin/dashboard.php');
				exit(0);
			} else {
				$_SESSION['message'] = "You are now logged in";
				// redirect to public area
				header('location: index.php');				
				exit(0);
			}
		}
	}

	// LOG USER IN
	if (isset($_POST['login_btn'])) {

		global $conn;

		$val = trim($_POST['username']); // remove empty space sorrounding string
		$val = mysqli_real_escape_string($conn, $_POST['username']);

		$username = $val;


		$val = trim($_POST['password']); // remove empty space sorrounding string
		$val = mysqli_real_escape_string($conn, $_POST['password']);

		$password = $val;

		if (empty($username)) { array_push($errors, "Username required"); }
		if (empty($password)) { array_push($errors, "Password required"); }
		if (empty($errors)) {
			$password = md5($password); // encrypt password
			$sql = "SELECT * FROM users WHERE username='$username' and password='$password' LIMIT 1";

			$result = mysqli_query($conn, $sql);
			if (mysqli_num_rows($result) > 0) {
				// get id of created user
				$reg_user_id = mysqli_fetch_assoc($result)['id']; 

				// put logged in user into session array
				$_SESSION['user'] = getUserById($reg_user_id); 

				// if user is admin, redirect to admin area
				if ( in_array($_SESSION['user']['role'], ["Admin", "Author"])) {
					$_SESSION['message'] = "You are now logged in";
					// redirect to admin area
					header('location: ' . BASE_URL . '/admin/dashboard.php');
					exit(0);
				} else {
					$_SESSION['message'] = "You are now logged in";
					// redirect to public area
					header('location: ' . BASE_URL . '/admin/dashboard.php');				
					exit(0);
				}
			} else {
				array_push($errors, 'Wrong credentials');
			}
		}
	}

	// Get user info from user id
	function getUserById($id)
	{
		global $conn;
		$sql = "SELECT * FROM users WHERE id=$id LIMIT 1";

		$result = mysqli_query($conn, $sql);
		$user = mysqli_fetch_assoc($result);

		// returns user in an array format: 
		return $user; 
	}
?>