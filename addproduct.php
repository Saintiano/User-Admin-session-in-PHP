
<form class="span4" action="" method="post" enctype="multipart/form-data">  
  <fieldset class="span3">


    <legend>Add Product</legend>
     <label>Product Name</label>
    <input type="text" name="prodname" class="input-xlarge" placeholder="Username...">
     <label>Description</label>
    <textarea rows="3" class="des" name="des"></textarea><br/><br/>
     <span class="btn btn-file"><input type="file" name="file" /></span><br/><br/>
     <br/>




     <?php

	if(isset($_POST['add'])){
			$conn=mysql_connect('localhost','root','');
mysql_select_db("getdata",$conn);

	$prodname=$_POST['prodname'];
	$des=$_POST['des'];
		
	$file = $_FILES ['file'];

	$name = $file ['name'];
	$type = $file ['type'];
	$size = $file ['size'];

	$tmppath = $file ['tmp_name'];

if($name==""){
	$name = $file ['name'];
	}
	else{
		$name = time()."_".$file ['name'];
		}

move_uploaded_file ($tmppath, 'product/'.$name); // location sang photo, sa folder nga "product"

$addborrow="Insert into product(prodname,description,photo)
 values(
 '".$prodname."',
 '".$des."',
 '".$name."')";

$rs=mysql_query($addborrow) or die (mysql_error());
	if($rs){ ?>
		<label>Successfully added!!</label>
<?php	}
	
}?>
     <button type="submit" name="add" class="btn btn-success">Submit</button>
 





  </fieldset>
</form>
