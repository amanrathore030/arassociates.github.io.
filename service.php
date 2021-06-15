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
#background{
	width:100%;
  background: url(image/bg.png) fixed;}

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

.data{text-align:left; font-size:12px;}

#projectimages{
	padding:8px;
	margin-right:5px;
	margin-bottom:20px;
}



h5{
	font-family:Verdana, Geneva, sans-serif;
	color:#333;
	text-align:center;
	font-size:20px;
	margin-bottom:30px;
}

.titletab{
	font-family: 'droid_sansregular';
	font-size:22px;
	color:#00a2e8;
	padding-bottom:10px;
  display: block;
  margin: 5px;
  margin-top: 5px;
}

.title{
    display:  block;
    margin: 5px;
    margin-top: 5px;
    vertical-align: top;
    list-style-type: square;
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
  <div class="bannertext">Our Services</div>
</div>


<div id="aboutusmain">
<div id="aboutus" style="width:75%; margin:0 auto; float:unset;">

<div class="data">
<div id="projectimages">

<h5>We also  offer following services to our institutional clients</h5>
<table>
  <tr>
    <td>
    <ul class="title">
          	
            <li class="titletab">Projects & Management Consultants</li>

            <li class="titletab">Turnkey Project:</li>

            <li class="title">Designing</li>

            <li class="title">Planning</li>

            <li class="title">Construction</li>

            <li class="title">Exterior work</li>

            <li class="title">Interior work</li>

            <li class="title">Wood work</li>

             <li class="title">Electrical work</li>

             <li class="title">Plumbing work</li>
            
             <li class="title">Waterproofing work</li>

          </ul>
    </td>

    <td>
    <ul>

            <li class="titletab">Mechanical, Electrical and Plumbing engineering (MEP): </li>

             <li class="title">Total HVAC solution</li>

             <li class="title">Central plant heating and  cooling system</li>

             <li class="title">Advanced air volume system</li>

             <li class="title">Temperature control system</li>

             <li class="title">Fabrication work </li>

             <li class="title">Complete electrical  services</li>

             <li class="title">UPS</li>

             <li class="title">Fire alarm system</li>

             <li class="title">P A system</li>

             <li class="title">Security system</li>

             <li class="title">Lighting (exterior and  interior)</li>

             <li class="title">Waste and vent system</li>

             <li class="title">Water supply system</li>

             <li class="title">Water heating system, etc.</li>

          </ul>
    </td>
  </tr>
  <tr>
    <td>
    <ul>

            <li  class="titletab">Building management System (BMS):</li>

             <li class="title">Controlling and monitoring  building&rsquo;s electrical and mechanical equipment&rsquo;s such as lighting, ventilation,  power system, HVAC, etc.</li>

          </ul>
    </td>

    <td> <ul>

<li class="titletab">Complete IT solution:</li>

 <li class="title">Local area networking  (LAN)</li>

 <li class="title">EPBX system</li>

 <li class="title">CCTV system</li>

 <li class="title">Fire alarm system</li>

</ul>

</td>
  </tr>
</table>

</div>
</div>

</div>
</div>

<?php include("include/footer.php");?>
</body>
</html>
