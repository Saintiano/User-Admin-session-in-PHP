<?php
	$con=mysqli_connect("localhost","root","","getdata");
		// Check connection
		if (mysqli_connect_errno())
		  {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  }
	$subject = $_POST['subject'];
	$body = $_POST['body'];
	$date = date('Y-m-d H:i:s');
	if(empty($subject)){
		// $message = "Subject is Required!";
		// header("location: blog.php?message=".$message);
		echo  "Subject is Required!";
		header('Refresh: 1; url=welcome.php?addblog');
	}else if(empty($body)){
		// $message = "Body is required!";
		// header("location: blog.php?message=".$message);
		echo  "Body is Required!";
header('Refresh: 1; url=welcome.php?addblog');
	}else{
		mysqli_query($con,"INSERT INTO content (subject, date, body)
		VALUES ('$subject', '$date', '$body')");
		// $message = "Successfully Saved!";
		// header("location: blog.php?message=".$message);
		echo  "Success!";
		header('Refresh: 1; url=welcome.php');
	}
?>