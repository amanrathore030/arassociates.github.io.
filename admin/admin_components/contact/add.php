<?php
$con=mysqli_connect("localhost","root","","shp" );



if(isset($_POST['submit'])){
  $fld_title=$_POST['fld_title'];
  $fld_description=$_POST['fld_description'];

  $update="UPDATE `tbl_contact` SET `fld_contact`='$fld_contact',`fld_description`='$fld_description' WHERE 1";

$query=mysqli_query($con,$update);

if($query){
    $_SESSION['erro'] = 'This Content has been updated...';
}

}
    include_once"content_addf.php";
?>