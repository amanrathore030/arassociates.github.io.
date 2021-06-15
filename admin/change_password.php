<?php
session_start();
include("confi.php");

include("../admin/include/url_main.php");
if(!defined('MYSITE')){
  header('location:default.php');
  die();
}

if(isset($_POST['submit'])){
    
     $opassword = $_POST['opassword'];
     $npassword = $_POST['npassword'];
     $cpassword = $_POST['cpassword'];

     $select="SELECT `password` FROM `admin` WHERE 1";
     
     if(!$select){
         echo "d";
     }

     else if($password!= mysql_result($select, 0)){
         echo "df";
     }
     
     if($npassword=$cpassword)
     $update="UPDATE `admin` SET `password`='$password' WHERE 1";

     if($update)
     {
     echo "Congratulations You have successfully changed your password";
     }
    else
     {
    echo "Passwords do not match";
    }

}

//     $select="SELECT `admin` FROM `admin` WHERE 1";

//     $update="UPDATE `admin` SET `password`='$newpassword' WHERE 1";

//     $query=mysqli_query($con,$select);
    
//     $row=mysqli_fetch_array($query);

//     if($oldpassword==''){
       
//     }
//     else if($newpassword==''){

//     }
//     else if($confirmpassword==''){
        
//     }
//     else if($newpassword!=$confirmpassword){
        
//     }
//     else if($newpassword!=$row['password']){
        
//     }
//     else{
//         mysqli_query($con,$update);
//     }
// }



?>

<link href="codelibrary/css/style.css" rel="stylesheet" type="text/css" />


<table width="100% cellpadding="0" cellspacing="0">
    <tr>
        <td  height="21" align="left" class="txt">
          <table  width="100%" align="center" cellpadding="0" cellspacing="0">
              <tr>
              <td width="76%" height="25" class="title"><img src="images/heading_icon.gif" width="16" height="16" hspace="5">Change Password</td>
              </tr>
          </table>
        </td>
    </tr>

 <?php 
 $select="SELECT * FROM `admin`";
 $que=mysqli_query($con,$select);
 
 while($row=mysqli_fetch_assoc($que)){
 ?>


    <tr>
        <td height="400" align="center" valign="top">
        <form method="post" action="default.php?page=change_password">
          <table  width="68%" border="0" align=center cellpadding="4" cellspacing="0" class="greyBorder">
              <tr align="left">
                  <td height="25" colspan="2" class="blueBackground">Change Password</td>
              </tr>

              <tr  class="oddRow">
                  <td colspan="2" align="center"  class="warning"></td>
              </tr>

              <tr  class="evenRow">
                  <td class="txt" align="right" colspan="2"><span class="warning">*</span> - Required Fields</td>
              </tr>

              <tr class="oddRow">
                  <td class="bldTxt" align="right" width="35%">Username</td>
                  <td align="left" width="65%" class="txt"><?php echo $row['username']; ?></td>
              </tr>


              <tr class="evenRow">
                  <td class="bldTxt" align="right">Old Password :</td>
                  <td align="left"><input type="text" name="opassword" size="45" class="txtfld"> <span class="warning">*</span></td>
              </tr>
              <tr class="oddRow">
                  <td class="bldTxt" align="right">New Password :</td>
                  <td align="left"><input type="text" name=npassword"" size="45" class="txtfld"> <span class="warning">*</span></td>
              </tr>
              <tr class="evenRow">
                  <td class="bldTxt" align="right">Confirm Password :</td>
                  <td align="left"><input type="text" name="cpassword" size="45" class="txtfld"> <span class="warning">*</span></td>
              </tr>
              <tr class="oddRow">
                  <td align=center colspan=100%>
                  <input type="submit" name="submit" value="Submit" class="button">
                  <input type="reset" name="reset" value="Reset" class="button"></td>
              </tr>
          </table>
          </form>
        </td>
    </tr>
<?php
 }
?>
</table>
