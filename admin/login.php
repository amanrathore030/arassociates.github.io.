<?php
include 'confi.php';

include("../admin/include/url_main.php");
if(!defined('MYSITE')){
  header('location:default.php');
  die();
}

session_start();
@extract($_POST);


if(isset($_POST['submit'])){
    $user = $_POST['username'];
    $pass = $_POST['password'];

    $sql = "SELECT * FROM `admin` WHERE username='$user' and password='$pass'";

    $result = mysqli_query($con,$sql);

    // $row = mysqli_fetch_array($result);

    $count = mysqli_num_rows($result);
    
    if($count == '1'){  
        header('location:default.php'); 
        die();

    }  
    else{  
        $_SESSION['sess_msg'] = 'Invalid Username/Password';
        header("Location: index.php");
    }     
}

?>