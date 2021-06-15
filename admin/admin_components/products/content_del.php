<?php

$id=$_GET['id'];

$con=mysqli_connect("localhost","root","","shp" );

$delete="DELETE FROM `table_product` WHERE `id`='$id'";
    
$query=mysqli_query($con,$delete);

if($query){
    header("location:default.php?option=products&page=content_list");
}

?>