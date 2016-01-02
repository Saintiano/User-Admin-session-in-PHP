<?php
include_once("develop_php_library.php");
$con=mysqli_connect("localhost","root","","getdata");
		// Check connection
		if (mysqli_connect_errno())
		  {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  }
?>

<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/style.css">
<title></title>
</head>
<body>

	
	<div id="container">
    	
        	
        	<?php
				$query = mysqli_query($con, "SELECT * FROM content");
				while($row = mysqli_fetch_array($query)){
					$date = $row['date'];
					$timeAgoObject = new convertToAgo;
					$ts = $date;
					$convertedTime = ($timeAgoObject -> convert_datetime($ts));
					$when = ($timeAgoObject -> makeAgo($convertedTime));

			?>
			
            <div class="wrapper">
           	<h2><a href="viewblog.php?id=<?php echo $row['id']; ?>"><?php echo $row['subject']; ?></a></h2>
            <h4><?php echo $when; ?></h4>
            <?php
			$body = $row['body'];
			if(strlen($body)>100){
				preg_match('/^([^.!?\s]*[\.!?\s]+){0,30}/', strip_tags($body), $abstract);
				echo "<h3>".$abstract[0]."...</h3>";
			}else{
				echo "<h3>".$body."...</h3>";
			}
			?>
            </div>
            <?php } ?>
        </div>
    </div>
    	</div>
</body>
</html>