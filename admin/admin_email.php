<?php
session_start();
include("confi.php");

if(isset($_POST['submit'])){

    $email= $_POST['email'];

    $update="UPDATE `admin` SET `email`='$email' WHERE 1";
    $query = mysqli_query($con,$update);

    if($query){
        $_SESSION['err'] = 'Email has been updated successfully';
    }
  
}

include("../admin/include/url_main.php");
if(!defined('MYSITE')){
  header('location:default.php');
  die();
}

?>


<table width="100%" cellpadding="0" cellspacing="0">
    <tr>
        <td height="21" class="txt">
            <table width="100%" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="76%" height="25" class="title"><img src="images/heading_icon.gif" width="16" height="16" hspace="5">Admin Email</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td><p></p></td>
    </tr>
    <tr>
       <td>
       <form method="post" action="default.php?page=admin_email">
       
         <table width="60%" class="greyBorder" align="center">
          <tr>
            <td  align="left" class="blueBackground" colspan="2">&nbsp; &nbsp; &nbsp; &nbsp; Change Email</td>
          </tr>
          


          <tr>
              <td colspan="2"><p align="center" class="warning"><?php echo ($_SESSION['err']);?></p></td>
          </tr>
         
     

          <tr class="evenRow">
              <td colspan="2" class="txt" align="right"><span class="warning">*</span> - Required Fields</td>
          </tr>
          <tr class="oddRow">
              <td class="bldTxt" align="right">Enter Email :</td>
     
 <?php 
 $select="SELECT * FROM `admin`";
 $que=mysqli_query($con,$select);
 
 while($row=mysqli_fetch_assoc($que)){
 ?>
              <td><input type="text" name="email"  class="txtfld" size="45" value="<?php echo $row['email'];?>"></td>
<?php
 }
?>

          </tr>
          <tr>
              <td colspan="2" align=center>
                  <input type="submit" name="submit" value="Submit" class="button">
                  <input type="reset" name="reset" value="Reset" class="button">
             </td>
          </tr>
          
         </table>
         </form>
         </td>  
    </tr>     
</table>