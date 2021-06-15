

<?php

if(isset($_POST['submit'])){
	
  $id=$_GET['id'];
  
  $fld_name=$_POST['fld_name'];

  $image=$_FILES['fld_image']['name'];

  $img_fld="../uploaded_files/gallery/".$image;
  $img_fld2="../uploaded_files/gallery/".$image;
 
  move_uploaded_file($_FILES['fld_image']['tmp_name'],$img_fld2);

  $update="UPDATE `tbl_sub_product` SET `fld_name`='$fld_name',`image`='$img_fld2' WHERE `id`='$id'";

  $query = mysqli_query($con,$update);
 
  if($query){
    $_SESSION['erro'] = 'This Content has been updated...';
}


}
?>




<table  width="100%"  cellpadding="0" cellspacing="0">
   <tr>
      <td height="21" align="left" class="txt">
				<table width="100%" align="center" cellpadding="0" cellspacing="0" class="title">
                    <tr>
                      <td width="76%" height="25"><img src="images/heading_icon.gif" width="16" height="16" hspace="5">Manage Certificate</td>
                      <td width="24%" align="right"><input name="b1" type="button" class="button1" id="b1" value="Manage Certificate" onClick="location.href='default.php?option=sub_products&page=content_list'">
                      &nbsp;</td>
                    </tr>
             </table>
	   </td>
   </tr>

  <tr>
   <td><br></td>
  </tr>

  <?php
$id=$_GET['id'];

$sel="SELECT * FROM `tbl_sub_product` WHERE `id`='$id'";

$line=mysqli_query($con,$sel);

while($row=mysqli_fetch_assoc($line)){

?>
   <tr>
   <td height="400" align="center" valign="top">
     <table width="68%" border="0" align=center cellpadding="4" cellspacing="0" class="greyBorder">

<form  method="POST" action="<?php $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data">   
      <tr align="left"> 
					<td height="25" colspan="2" class="blueBackground">Edit Gallery</td>
      </tr>

      <tr> 
					<td align="center"colspan="2" class="warning"><?php echo ($_SESSION['erro']);?></td>
      </tr>


      <tr class="evenRow">
					<td class="txt" align="right" colspan="2"><span class="warning">*</span> - Required Fields</td>
				</tr>
				

       <tr class="oddRow">
				  <td width="35%" align="right" valign="top" class="bldTxt">Title</td>
				  <td width="65%" align="left" class="txt"><input name="fld_name" type="text" class="txtfld" size="50" value="<?php echo $row['fld_name'];?>"></td>
			    </tr>
      

        <tr class="oddRow">
				  <td align="right" valign="top" class="bldTxt">image</td>
				  <td align="left" class="txt"><input type="file" name="fld_image"  id="img"></td>
			    </tr>
        
        <tr class="">
          <td></td>
          <td><img src="<?php echo $row['image'];?>" width="100" height="100"></td>
        </tr>


        <tr class="oddRow">
					<td align=center colspan=100%>
          <input id="saveForm2" class="button1" type="submit" name="submit" value="Update" />
          <input type="reset" name="reset" class="button1" value="Reset" /></td>
				</tr>
  </form>
  </table>


   </td>
   </tr>
   <?php
}
?>

</table>



