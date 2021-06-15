<?php

$id=$_GET['id'];

$con=mysqli_connect("localhost","root","","shp" );

$delete="DELETE FROM `tbl_category` WHERE `id`='$id'";
    
$query=mysqli_query($con,$delete);

if($query){
    header("location:default.php?option=category&page=content_list");
}

?>