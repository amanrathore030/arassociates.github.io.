<?php
session_start();

$con=mysqli_connect("localhost","root","","shp" );


$select="SELECT * FROM `tbl_about`";

$query=mysqli_query($con,$select);


while($row=mysqli_fetch_assoc($query)){

?>



<table  width="100%"  cellpadding="0" cellspacing="0">
   <tr>
      <td height="21" align="left" class="txt">
				<table width="100%" align="center" cellpadding="0" cellspacing="0" class="title">
                    <tr>
                      <td width="76%" height="25"><img src="admin/images/heading_icon.gif" width="16" height="16" hspace="5">Manage About </td>
                      <td width="24%" align="right"><input name="b1" type="button" class="button1" id="b1" value="Manage About" onClick="location.href='default.php?option=about&page=content_list'">
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
       <form method="post" action="default.php?option=about&page=add" >
       <tr align="left"> 
					<td height="25" colspan="2" class="blueBackground">Edit About</td>
      </tr>

      <tr> 
					<td  height="25" align="center"colspan="2" class="warning"><?php echo ($_SESSION['erro']);?></td>
      </tr>




       <tr class="oddRow">
				  <td width="35%" align="right" valign="top" class="bldTxt">About Heading</td>
				  <td width="65%" align="left" class="txt"><input name="about" type="text" class="txtfld" size="50" value="<?php echo $row['about'];?>"></td>
			    </tr>

        <tr class="oddRow">
				  <td align="right" valign="top" class="bldTxt">Description</td>
				  <td align="left" class="txt"><textarea name="description" cols="40" rows="5" class="ckeditor"><?php echo $row['description'];?></textarea></td>
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
</table>












<?php
}
?>