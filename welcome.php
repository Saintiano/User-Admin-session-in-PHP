<?php session_start(); 

if(!isset($_SESSION['pid']) || !isset($_SESSION['username'])    )
{
		echo "<script>window.location='index.php'</script>";

	}
  else{}

?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome&nbsp;|&nbsp;<?php echo $_SESSION['username'];   ?></title>
<link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/bootstrap.min.js"></script>
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
    <legend>Welcome to Ronel Llarenas Site</legend>


               <a href="?addproduct" class="btn btn-large btn-success"> <i class="icon-plus"></i>Add Product </a>
               <a href="?addblog" class="btn btn-primary btn-large "><i class="icon-eye-open"></i> Add Blog </a>

  </fieldset>
</form>

<?php 
if(isset($_GET['addproduct']))
{ 
include('addproduct.php'); }

elseif(isset($_GET['addblog'])){ 
include('addblog.php'); }

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




if(isset($_GET['out'])) //  halin ang 'out' sa codes sa babaw nga <a href="?out" class="btn btn-small"> Logout </a> BUTTON!!! ........
//
{
	




// $sess = mysql_query("SELECT * FROM sessions WHERE (username = '" .addslashes($uname) . "') and (userid = '" .addslashes($pid). "')");

// if($row=mysql_fetch_array($sess))
// {


// echo $sessid = $row['session_id']; 


// }








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


</div><script 
    data-env="sandbox" 
    data-callback="freesourcecode.webege.com" 
    data-tax="3.50" 
    data-shipping="0.50" 
    data-currency="php" 
    data-amount="100" 
    data-name="shirt" 
    data-button="buynow" src="paypal-button.min.js?merchant=langajade@gmail.com"
></script>
</body>
</html>