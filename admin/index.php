
<?php
session_start();

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="codelibrary/css/style.css" rel="stylesheet" type="text/css" />
    <title>Document</title>
</head>
<body>
<?php 
include("include/header.php");
?>

<table class="center">
<tr>
<td>
<p align="center" class="warning"><?php echo ($_SESSION['sess_msg']);?>
</p>


<form action="login.php" method="post" onsubmit="return validate(this)">
<table width="300" class="greyBorder">
 <tr>
  <td height="30" align="left" class="blueBackground">&nbsp; &nbsp; &nbsp; &nbsp; Secured Login</td>
 </tr>

 <tr>
  <td>
   <table width="370" border="0" cellspacing="0" cellpadding="4">
    <tr class="evenRow">
      <td colspan="2" align="right">
      <span class="warning">*</span> - Required Fields
      </td>
    </tr>
    <tr class="oddRow">
      <td width="80"><span class="txt">Username</span></td>
      <td height="30"><input type="text" name="username" value="" class="txtfld"> <span class="warning">*</span></td>
    </tr>
    <tr class="oddRow">
      <td width="80"><span class="txt">Password</span></td>
      <td height="30"><input type="password" name="password" value="" class="txtfld"> <span class="warning">*</span></td>
    </tr>
    <tr class="oddRow">
      <td>  </td>
      <td><input type="submit" name="submit" value="Login"  class="button"></td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</td>
</tr>
</table>
<form>
<p><br></p>
<p><br></p>
<p><br></p>

<?php 
include("include/fotter.php");
?>
</body>
</html>






