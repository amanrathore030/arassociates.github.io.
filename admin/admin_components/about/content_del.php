<?php

if(!defined('MYSITE')){
    header('location:default.php');
    die();
  }

$id=$_GET['id'];

$con=mysqli_connect("localhost","root","","shp" );

$delete="DELETE FROM `tbl_about` WHERE `id`='$id'";
    
$query=mysqli_query($con,$delete);

if($query){
    header("location:default.php?option=about&page=content_list");
}

?>