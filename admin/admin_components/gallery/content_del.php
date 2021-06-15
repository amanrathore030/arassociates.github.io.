<?php

$id=$_GET['id'];

$con=mysqli_connect("localhost","root","","shp" );

$delete="DELETE FROM `tbl_gallery` WHERE `id`='$id'";
    
$query=mysqli_query($con,$delete);

if($query){
    header("location:default.php?option=gallery&page=content_list");
}

?>