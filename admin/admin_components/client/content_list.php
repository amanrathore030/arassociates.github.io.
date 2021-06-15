<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="codelibrary/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td height="21" align="left" class="txt">
		<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" class="title">
             <tr>
             <td width="76%" height="25"><img src="images/heading_icon.gif" width="16" height="16" hspace="5">Manage About </td>
             <td width="24%" align="right" style="padding-right:20px;"></td>
             </tr>

        </table>
        </td>
   </tr>

   <tr>
     <td><br><br></td>
   </tr>


<tr>
<td>
<form name="frm_list" method="post" >
 <table width="98%" align="center" cellpadding="4" cellspacing="1" class="greyBorder">
     <tr  class="blueBackground">
         <th  width="5%" align="left">S.No.</th>
         <th width="20%"  align="left">Heading</th>
         <th width="50%"  align="left">Discription </td>
         <th width="14%" align="center">Status</th>
         <th width="13%" align="center">Action</th>
         <th width="7%" align="center"><input name="check_all" type="checkbox" id="check_all" value="check_all" onclick="checkall(this.form)" /></th>
     </tr>
<?php

$con=mysqli_connect("localhost","root","","shp" );

$select="SELECT * FROM `tbl_about`";

$query=mysqli_query($con,$select);

while($row=mysqli_fetch_assoc($query)){

?>

     <tr>
         <td align="left" valign="top" class="txt"><?php echo $row['id'];?></td>
         <td align="left" valign="top" class="txt"><?php echo $row['about'];?></td>
         <td align="left" valign="top" class="txt"><?php echo $row['description'];?></td>
         <td align="center" valign="top" class="txt"><?php if($row['status']==1){?>
        Activated
        <?php }else{?>
            Deactivated
                          <?php }?>
         </td>
         <td align="center" valign="top" class="txt"><a href="default.php?option=about&page=add&id=<?php echo $row['id']; ?>">edit</a></td>
         <td align="center" valign="top"><input type="checkbox" name="ids[]" value="<?php echo $row['id']?>" /></td>
     </tr>
<?php
}
?>

     <tr align="right">
      <td colspan="6">
         <table table width="100%" cellspacing="0" cellpadding="0">
         <tr>
            <td width="5%"></td>
            <td  width="95%"  align="right"><a href="content_del.php"><input type="submit" name="submit" value="Activate" class="button"> </a>
            <input type="submit" name="submit" value="Deactivate" class="button" onclick="return del_prompt(this.form,this.value,'default.php?option=about&page=content_del')">
            <input type="submit" name="submit" value="Delete" class="button" onclick="return del_prompt(this.form,this.value,'default.php?option=about&page=content_del')">
            </td>
         </td>
         </table>
      </td>
     </tr>

</table>
</form>

</td>
</tr>
</table>
</body>
</html>