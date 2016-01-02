<table class="table table-bordered">
<thead>
<th>All Products</th>
</thead>
</table>
<?php 
   $conn=mysql_connect('localhost','root','');
mysql_select_db("getdata",$conn);

$query1 = "select * from product";
$get=mysql_query($query1);
while($row=mysql_fetch_array($get)){
   ?>
 <table class="table table-bordered">
 <tr>
 <td>Product Name:&nbsp;<h5><?php echo $row['prodname'] ?></h5></td>
 <tr>
 <tr>
 <td><img src="product/<?php echo $row['photo'] ?>" height="200" width="200" class="img-polaroid"></td>
 </tr>
  <tr>
  <td><font color="red">Product Description: </font> &nbsp;<?php echo $row['description'] ?></td>
 </tr>
   <?php }?>
</table>

