<?php session_start(); // start session, para sa session

// 

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to My Business</title>
 <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/bootstrap.min.js"></script>
</head>

<body>


<div class="login">


<form class="span4" action="" method="post">  
  <fieldset class="span3">
    <legend>Login</legend>

     <label>Username<span class="required">*</span></label>
    <input type="text" name="uname" placeholder="Username...">

     <label>Password<span class="required">*</span></label>
     <input type="password" name="pass" placeholder="Password..."><br/>


     <button type="submit" name="login" class="btn"> Login</button>
     <a href="register.php" class="btn btn-primary">Register</a>

  </fieldset>
</form>


<?php

$conn=mysql_connect('localhost','root','');
mysql_select_db("getdata",$conn);

if(isset($_POST['login'])){

$uname = trim($_POST['uname']);
$pass = trim($_POST['pass']);


$user = mysql_query("SELECT * FROM info WHERE (username = '" .addslashes($uname) . "') and (password = '" .addslashes(sha1($pass)). "')");

if($row=mysql_fetch_array($user))

{
	

$_SESSION['pid'] = $row['pid'];
$_SESSION['username'] = $row['username'];


echo $pid = $row['pid']; // ako lng na ngbutang echo, para mkita ang id number pero pede man nga panason ang echo lang!!!
 

$http_client_ip = $_SERVER['HTTP_CLIENT_IP'];

                                     $http_x_fowarded_for = $_SERVER['HTTP_X_FOWARDED_FOR'];
                                     $remote_addr = $_SERVER['REMOTE_ADDR'];

                                     if (!empty($http_client_ip)) {
                                        $ip = $http_client_ip;  ///////////pagkwa sang ip address then ibutang sa $ip

                                     } 

                                     elseif (!empty($http_x_fowarded_for)) {
                                        $ip = $http_x_fowarded_for;  /////////////


                                    } 


                                    else {
                                        $ip = $remote_addr;
                                    }


                        $time = time();
                         $actual_time = date('d M Y @ H:i:s', $time); ///////////// pakwa sang time kg ibutang sa  $actual_time



mysql_query("INSERT INTO sessions VALUES ('$sid', '$pid', '$uname', '$ip', '$actual_time', '')");


 
          
if($pid==27)
{
header('Refresh: 1; url=welcome.php');



}
else
{
header('Refresh: 1; url=user.php');
}




?>

            <!-- 
if($id==1){
header('Refresh: 2; url=admin.php');

}
else
{
header('Refresh: 2; url=user.php');
} -->
<!-- 
<script>


if 
<script>alert('Welcome you are now logging in');</script>


<script>window.location='welcome.php';</script>


</script>
 -->



<?php
}




else /////////////////////ARI ANG ELSE oh!!!




{ 
    ?>


<script>alert('Invalid Account');

</script>
<?php }

}

?>

</div> 






<script src="paypal-button.min.js?merchant=YOUR_MERCHANT_ID"
    data-button="buynow"
    data-name="My product"
    data-amount="1.00"
>

</script>
</body>
</html>


