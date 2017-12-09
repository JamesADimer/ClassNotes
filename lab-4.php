<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Register</title>
</head>
<body>
	<?php
		$email = $_POST["email"];
		$dob = $_POST["dob"];
		$pass = $_POST["pass"];
		$pass1 = $_POST["pass1"];
		
		echo $email."</br></br>";
		echo $dob."</br></br>";
		if ($pass == $pass1)
		{
			echo"Passwords match!";
		}
		else
		{
			echo"Error: Passwords do not match";
		}
	?>
</body>
</html>