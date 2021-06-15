<?php
include("confi.php");

?>




<!DOCTYPE html>
<html lang="en">
<head>
<link href="css\style.css" rel="stylesheet" type="text/css" />
<link href="css\nav.css" rel="stylesheet" type="text/css" />
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

.centerpanel{
	width:100%;
	max-width:1100px;
	font-family:'droid_sansregular';
	font-size:12px;
	line-height:20px;
	color:#2c2c2c;
	margin:0 auto;
	
}


#aboutus{
	float:left;
	width:100%;
	background:#FFFFFF;
	padding:15px;
	
}


#aboutcontent{
	width:100%;
	font-family: 'droid_sansregular';
	font-size:14px;
	text-align:justify;
	line-height:22px;
}

#projectimages{
	width:100%;
	max-width:250px;
	padding:8px;
	margin-right:5px;
	margin-bottom:20px;
	float:left;
	border:1px solid #e8e8e8;
}

#projectimages:hover{
	border:1px solid #00b2ff;
}

h6{
	font-family:Verdana, Geneva, sans-serif;
	font-size:12px;
	color:#333;
	line-height:30px;
	font-weight:400;
	margin-bottom:-5px;
}
h6 a{
	font-family:Verdana, Geneva, sans-serif;
	font-size:12px;
	color:#333;
	line-height:30px;
	font-weight:400;
}


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
  <div class="bannertext">Project -Details</div>
</div>

<div id="aboutusmain">
  <div id="aboutus" style="width:65%; margin:0 auto; float:unset;">
	<table>
    <tr>
      <td>
	  <?php 
$id=$_GET['id'];

$select="SELECT * FROM `tbl_category` WHERE `id`='$id'";

$query=mysqli_query($con,$select);

while($row=mysqli_fetch_assoc($query)){
?>

<div class="data">
<div id="projectimages">
<a href="projects-details.php?id=<?=$row['id'];?>"><img src="<?=$row['image'];?>" width="250" height="154" /></a>
<h6><a href="projects-details.php?id=<?=$row['id'];?>"><?=$row['fld_category'];?></a></h6>
</div>
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
