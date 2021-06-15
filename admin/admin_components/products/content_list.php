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
             <td width="76%" height="25"><img src="images/heading_icon.gif" width="16" height="16" hspace="5">Manage Products </td>
             <td width="24%" align="right" style="padding-right:20px;"><input name="b1" type="button" class="button1" id="b1" value="Add Products" onClick="location.href='default.php?option=products&page=add'"></td>
             </tr>

        </table>
        </td>
   </tr>

   <tr>
     <td><br><br></td>
   </tr>


<tr>
<td>
<form name="frm_list" method="post" ac>
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
$i=0;

$con=mysqli_connect("localhost","root","","shp" );

$select="SELECT * FROM `table_product`";

$query=mysqli_query($con,$select);

while($row=mysqli_fetch_assoc($query)){
    $className = ($className == "evenRow")?"oddRow":"evenRow";
    $i++;
?>

<tr class="<?php print $className?>">
         <td align="left" valign="top" class="txt"><?php echo $i;?></td>
         <td align="left" valign="top" class="txt"><?php echo $row['fld_product'];?></td>
         <td align="left" valign="top" class="txt"><?php echo $row['fld_description'];?></td>
         <td align="center" valign="top" class="txt"><?php if($row['fld_status']==1){?>
        Activated
        <?php }else{?>
            Deactivated
                          <?php }?>
         </td>
         <td align="center" valign="top" class="txt"><a href="default.php?option=products&page=content_addf&id=<?php echo $row['id']; ?>">edit</a></td>
         <td align="center" valign="top" class="txt"><a href="default.php?option=products&page=content_del&id=<?php echo $row['id']; ?>">Delete</a></td>
     </tr>
<?php
}
?>

</table>
</form>

</td>
</tr>
</table>
</body>
</html>