<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<style>


.menuLeft {background : url(images/menuBack.jpg); padding-left:25px; height:25px; text-align:left;}
 


 .subMenu {padding-left:10px; margin-left:5px; background : url(images/plus.jpg); background-repeat:no-repeat;}

.menuLinks {font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #1F7896; text-decoration:none; 
}
a.menuLinks {text-decoration:none; font-size: 12px; color: #1F7896; font-family: Arial, Helvetica, sans-serif;}

.menuLinks:hover { text-decoration:underline; font-size: 12px; color: #1F7896; font-family: Arial, Helvetica, sans-serif;
	}
</style> 

</head>
<body>
    <table width="100%"  border="0" cellspacing="1" cellpadding="0">
        <tr>
            <td class="menuLeft">
            <a href="default.php">Home</a></td>
        </tr>
      
        <tr>
            <td class="menuLeft"><div class="menuBoldText">Admin Module</div>
            <div class="subMenu"><a href="default.php?page=admin_email" class="menuLinks">Admin Email</a></div>
            <div class="subMenu"><a href="default.php?page=change_password"" class="menuLinks">Change Password</a></div></td>
        </tr>
    
        <tr>
            <td class="menuLeft"><div class="menuBoldText">Information</div>
            <div class="subMenu"><a href="default.php?option=home&page=content_list" class="menuLinks">Manage Home Page</a></div>
            <div class="subMenu"><a href="default.php?option=about&page=content_list" class="menuLinks">Manage About Page</a></div>
            <div class="subMenu"><a href="default.php?option=contact&page=content_list" class="menuLinks">Manage Contacts Page</a></div></td>
        </tr>
    
        <tr>
            <td class="menuLeft"><div class="menuBoldText">Category Management</div>
            <div class="subMenu"><a href="default.php?option=category&page=add" class="menuLinks">Add Category</a></div>
            <div class="subMenu"><a href="default.php?option=category&page=content_list" class="menuLinks">Manage Category</a></div></td>
        </tr>
     
        <tr>
            <td class="menuLeft"><div class="menuBoldText">Products Management</div>
            <div class="subMenu"><a href="default.php?option=products&page=add" class="menuLinks">Add Products</a></div>
            <div class="subMenu"><a href="default.php?option=products&page=content_list" class="menuLinks">Manage Products</a></div></td>
        </tr>
   
        <tr>
            <td class="menuLeft"><div class="menuBoldText">Certificate Management</div>
            <div class="subMenu"><a href="default.php?option=sub_products&page=add" class="menuLinks">Add Certificate</a></div>
            <div class="subMenu"><a href="default.php?option=sub_products&page=content_list" class="menuLinks">Manage Certificate</a></div></td>
        </tr>
     
        <tr>
            <td class="menuLeft"><div class="menuBoldText">Gallery Management</div>
            <div class="subMenu"><a href="default.php?option=gallery&page=add" class="menuLinks">Add Gallery</a></div>
            <div class="subMenu"><a href="default.php?option=gallery&page=content_list" class="menuLinks">Manage Gallery</a></div></td>
        </tr>
       
        <tr>
            <td class="menuLeft"><a href="logout.php">Logout</a></td>
        </tr>

    </table>
</body>
</html>