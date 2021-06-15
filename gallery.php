<?php
include("confi.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
<link href="css\style.css" rel="stylesheet" type="text/css" />
<link href="css\style_common.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet" type="text/css" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
#aboutusmain{
	width:100%;
	float:left;
  background: url(image/bg.png) fixed;
}


#aboutus{
	float:left;
	width:100%;
	background:#FFFFFF;
	padding:15px;
	
}

table{
  margin-left: auto;
  margin-right: auto;
}

.data{text-align:left; font-size:12px; float:left;}

.container{
	width:100%;
  float:left;
  height:140px;
  background: url(image/mini.png)no-repeat center;
}

.bannertext {
	width:100%;
	font-family:Verdana, Arial, Helvetica, sans-serif;
	color:#FFFFFF;
	line-height:140px;
	text-align:center;
	font-size:40px;
  }

    </style>
</head>
<body>
    <!-- Top panel -->
    <?php include("include/top.php");?>
    
<div class="container">
  <div class="bannertext">Gallery</div>
</div>




<div id="aboutusmain">
  <div id="aboutus" style="width:65%; margin:0 auto; float:unset;">
	<table>
    <tr>
      <td>
<?php 
$select="SELECT * FROM `tbl_gallery`";
$query=mysqli_query($con,$select);

while($row=mysqli_fetch_assoc($query)){
?>
<div class="data"><img src="uploaded_files/gallery/<?php echo $row['image'];?>" height="200" width="200">
</div>
<?php
}
?>
</td>
</tr>
  </table>
  </div>
 </div>





<?php include("include/footer.php");?>
</body>
</html>
