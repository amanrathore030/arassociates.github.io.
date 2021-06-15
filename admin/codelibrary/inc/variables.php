<?php

session_start();

$dbhost="localhost";
$dbuser="root";
$dbpass="";
$dbname="shp";

$conn= new mysqli($dbhost, $dbuser, $dbpass, $dbname)or die("Connection Failed:%s\n". $conn -> error);
return $conn;


define("SITE_TITLE","S.H. Associates");

define("SITE_ADMIN_TITLE","S.H. Associates - Secure Admin Panel");

define(PAGING_SIZE,15);

date_default_timezone_set('Asia/Kolkata');
?>