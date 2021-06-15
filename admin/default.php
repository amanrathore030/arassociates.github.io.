<?php 
ob_start();
session_start();
define('MYSITE',true);
include("confi.php");
include("../admin/include/url_main.php");
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="codelibrary/css/style.css" rel="stylesheet" type="text/css" />
    <script src="ckeditor/ckeditor.js"></script>
</head>

<body>
<?php
include("include/header.php");
?>

<table width="100%" cellspacing="0" cellpadding="0">
  <tr>
      <td  width="180" valign="top" class="rightBorder">
        <table width="100%" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center"><?php include("include/left_menu.inc.php");?></td>
          </tr>
        </table>
       <br />
       <br />
       </td>
      <td width="1"><img src="./images/spacer.gif" width="1" height="1" /></td>

      <td height="400" align="center" valign="top">
      <?php
						include_once"./$file_name.php";
						?>
      </td>
  </tr>
</table>

<?php include("include/fotter.php");?>
</body>
</html>

