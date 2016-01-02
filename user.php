<?php session_start(); 

if(!isset($_SESSION['pid']) || !isset($_SESSION['username'])    )
{
		echo "<script>window.location='index.php'</script>";

	}
  else{}

?>


<html>
<head>


<title>Welcome&nbsp;|&nbsp;<?php echo $_SESSION['username'];   ?></title>


      <link type="text/css" rel="stylesheet" href="css/style.css">
</head>


<body>
<div class="wel">  
	Welcome&nbsp;&nbsp;

	<?php 

echo $uname = $_SESSION['username']; 

echo $pid = $_SESSION['pid']; 


// echo $sessid = $row['session_id']; 


?>















 <a href="?out" class="btn btn-small"> Logout </a> 
 


 
 
 <form class="span5" action="" method="post">
     
  <fieldset>
  	<center>
    <legend>Welcome to Ronel Llarenas Site</legend>


    	<div id="container"> 
    	
<a href="?viewblog" class="btn btn-primary btn-small"> <i class="icon-eye-open"></i>View Blog </a>
  <a href="?allproduct" class="btn btn-primary btn-small "><i class="icon-eye-open"></i> View Product </a>


  </div>
  </fieldset>
</form>



<?php 
if(isset($_GET['viewblog']))
{ 
include('viewblog.php'); }

elseif(isset($_GET['allproduct'])){ 
include('allproduct.php'); }

?>









<?php 


$host="localhost"; // hostname
$username="root"; //mysql username
$password=""; //mysql password
$db_name="getdata"; //databasename


// connect  to server and select database
mysql_connect("$host", "$username","$password") or die("cannot connect");

mysql_select_db("$db_name") or die("cannot select DB");


//echo $pid = $_session['pid']; //useless di ma retrieve kc nasa loob ng php script na walang retrive mysql command, ung sa taas na sa labas nitong php script ay nka retrieve dahil sa session.




if(isset($_GET['out'])) //  halin ang 'out' sa codes sa babaw nga <a href="?out" class="btn btn-small"> Logout </a> ........
//
{
	





$time = time();
      echo $actual_time = date('d M Y @ H:i:s', $time);


$sql=("UPDATE sessions SET session_end = '$actual_time' WHERE username = '$uname'  ");
//  $sql=("UPDATE sessions SET session_end = '$actual_time' WHERE userid = '$pid'   ");



$result=mysql_query($sql);


  if($result){

	unset($_SESSION['uname']);
	echo "<script>window.location='index.php'</script>";
	unset($_SESSION['username']);
	echo "<script>window.location='index.php'</script>";



}
else {
echo "ERROR";
}





	
	}
?>







