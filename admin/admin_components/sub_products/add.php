<?php
$con=mysqli_connect("localhost","root","","shp" );

if(isset($_POST['submit'])){
  $fld_name=$_POST['fld_name'];

  $image=$_FILES['fld_image']['name'];
  
  $img_fld="../uploaded_files/Certificate/".$image;
  $img_fld2="../uploaded_files/Certificate/".$image;

  
  move_uploaded_file($_FILES['fld_image']['tmp_name'],$img_fld2);


  $insert = "INSERT INTO `tbl_sub_product`( `fld_name`, `image`) VALUES ('$fld_name', '$img_fld2')";


$query=mysqli_query($con,$insert);

if($query){
    $_SESSION['erro'] = 'This Content has been added...';
}

}
?>


<table  width="100%"  cellpadding="0" cellspacing="0">
   <tr>
      <td height="21" align="left" class="txt">
				<table width="100%" align="center" cellpadding="0" cellspacing="0" class="title">
                    <tr>
                      <td width="76%" height="25"><img src="images/heading_icon.gif" width="16" height="16" hspace="5">Manage Category </td>
                      <td width="24%" align="right"><input name="b1" type="button" class="button1" id="b1" value="Manage About" onClick="location.href='default.php?option=sub_products&page=content_list'">
                      &nbsp;</td>
                    </tr>
             </table>
	   </td>
   </tr>

  <tr>
   <td><br></td>
  </td>

   <tr>
   <td height="400" align="center" valign="top">
     <table width="68%" border="0" align=center cellpadding="4" cellspacing="0" class="greyBorder">
       <form method="POST" enctype="multipart/form-data" action="default.php?option=sub_products&page=add"  >
       
       <tr align="left"> 
					<td height="25" colspan="2" class="blueBackground">Add Category</td>
      </tr>

      <tr> 
					<td align="center"colspan="2" class="warning"><?php echo ($_SESSION['erro']);?></td>
      </tr>


      <tr class="evenRow">
					<td class="txt" align="right" colspan="2"><span class="warning">*</span> - Required Fields</td>
				</tr>
				

       <tr class="oddRow">
				  <td width="35%" align="right" valign="top" class="bldTxt">Title</td>
				  <td width="65%" align="left" class="txt"><input name="fld_name" type="text" class="txtfld" size="50"></td>
			    </tr>


        <tr class="oddRow">
				  <td align="right" valign="top" class="bldTxt">Image</td>
				  <td align="left" class="txt"><input type="file" name="fld_image"  id="img"></td>
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
</table>a