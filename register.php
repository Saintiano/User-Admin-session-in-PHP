<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Register</title>
<link href="css/bootstrap.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
</head>

<body>
<div class="reg">
 <form class="span5" action="" method="post">
     
  <fieldset>
    <legend>Sign Up</legend>

   First Name <span class="required">*</span>
    <input type="text" name="fname" placeholder="First Name"><br/>
    Last Name<span class="required">*</span>
     <input type="text" name="lname" placeholder="Last Name"><br/>
     Middle Name<span class="required">*</span>
     <input type="text" name="mi" placeholder="Middle Name"><br/>
     Age<span class="required">*</span>
     <input type="text" name="age" class="input-small" placeholder="Age"><br/>
    <br/>
   Gender
   <label class="radio">
  <input type="radio" name="gender" id="optionsRadios1" value="Male" checked>
  Male
</label>
<label class="radio">
  <input type="radio" name="gender" id="optionsRadios2" value="Femal">
  Female
</label>
<br/>
Address<span class="required">*</span>
     <input type="text" name="address" class="input-xlarge" placeholder="Address"><br/>
     
     <fieldset>
   Username<span class="required">*</span>
     <input type="text" name="uname" placeholder="Username"><br/>
    Password<span class="required">*</span>
     <input type="password" name="pass" placeholder="Password"><br/>
    Confirm Password<span class="required">*</span>
     <input type="password" name="pass1" placeholder="Confirm Password"><br/>
     </fieldset>
  <?php
if(isset($_POST['getdata'])){
$conn=mysql_connect('localhost','root','');
mysql_select_db("getdata",$conn);

$fname=$_POST['fname'];
$lname=$_POST['lname'];
$mi=$_POST['mi'];
$age=$_POST['age'];
$gender=$_POST['gender'];
$address=$_POST['address'];
$uname=$_POST['uname'];
$pass=$_POST['pass'];
$pass1=$_POST['pass1'];

if(empty($fname) || empty($lname) || empty($mi) || empty($age) || empty($address)|| empty($uname)|| empty($pass))
{
	echo "<label class='err'>All field is required to fill up.</label>";
	}

elseif(!is_numeric($age)){
	echo "<label class='err'>Age must be numeric</label>";
	}
	elseif($pass != $pass1){
	echo "<label class='err'>Password didn't Match.</label>";
	}
		else{
$insert="Insert into info(fname,lname,mi,age,gender,address,username,password)
 values('".$fname."','".$lname."','".$mi."','".$age."','".$gender."','".$address."','".$uname."','".sha1($pass)."')";

$rs=mysql_query($insert) or die(mysql_error());

?>


<script>alert('Successfully Registered.. redirect to login page');</script>
<script>window.location='index.php';</script>
<?php }
}
 ?>
     <button type="submit" name="getdata" class="btn">Register</button>
     
    
     <br/><br/>
               <a href="index.php" class="btn btn-primary"> << Back </a>

  </fieldset>
</form>
</div>
</body>
</html>