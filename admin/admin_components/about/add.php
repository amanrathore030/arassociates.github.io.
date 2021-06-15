<?php

if(!defined('MYSITE')){
  header('location:default.php');
  die();
}

$con=mysqli_connect("localhost","root","","shp" );



if(isset($_POST['submit'])){
  $about=$_POST['about'];
  $description=$_POST['description'];

  $update="UPDATE `tbl_about` SET `about`='$about',`description`='$description' WHERE 1";

$query=mysqli_query($con,$update);

if($query){
    $_SESSION['erro'] = 'This Content has been updated...';
}

}
    include_once"content_addf.php";
?>