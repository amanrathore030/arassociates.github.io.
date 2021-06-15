<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<link rel="stylesheet" href="style.css">
<style>

.nav-bar{
    background: #1d4052;
    color: #fff;
    padding: 20px;
    font-family: sans-serif;
}

.nav-bar img{
    height: 45px;
    float: left;
    margin-top: 25px;
    margin-left: 30px;
}


.menu-right{
    text-align: right;

}

.menu-right ul li{
    text-align: center; 
    line-height:20px;
}




ul li{
    display: inline-block;
    margin: 20px;
    list-style: none;
    margin-top: 30px;
    line-height:20px;
}

ul li a{color:cyan; text-decoration: none; font-size: 15px; padding: 8px 5px; border-radius: 5px;
   letter-spacing:1px; transform: all 0.3s ease;}

ul li a:hover{ color: #111;  background: #fff; position: none;}

ul li ul li {display: none;}


ul li:hover ul li
    {display: block;
    padding: .5rem 1rem;
    font-size: .9rem;
    align-items: center;
    justify-content: space-between;
    transition: .3s; }

span{
    margin: 0 20px;
    font-size: 28px;
    cursor: pointer;
    display: none;
}


@media only screen and (max-width: 1240px){

    .nav-bar{
    background: #1d4052;
    color: #fff;
    padding: 20px;
    font-family: sans-serif;
}


   .nav-bar img{
      margin-top: 10px;
      height: 45px;
      float: left;
      margin-left: 20px;
  }


    span
    {
        display: block;
    }

    ul li{
        display: block;
    }
    ul{
        display: none; position: sticky;
    }

   ul li a{width: 100%; margin-left: 0px; display: block; font-size: 20px; color: #fff;
      transition: 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);}

   ul li a:hover{background: none; color: cyan;  }

   ul li ul li {display: none;}

   ul li:hover ul li
    {display: inline-block;
    padding: .5rem 1rem;
    font-size: .9rem;
    align-items: center;
    justify-content: space-between;
    transition: .3s; }

}






</style>
</head>
<body>
    <div id="header">
      <div class="centerpanel">
        <div id="address"> <i class="fas fa-map-marker-alt"></i> RZ-10/13,2nd floor Om Vihar Phase-1-A, Uttam nagar-West, New Delhi-110059</div>
        <div id="topcont"> <i class="fas fa-envelope-square"></i> info@shassociates.in, shassociates@outlook.com, sh_associates2u@yahoo.com</div>
        <div id="topcont1"> <i class="fal fa-phone-square"></i> +91-9999446607, 9811557791</div>
      </div>
    </div>


     <div class="nav-bar">
         <img src="image/logo.png">
         <div class="menu-right">
             <span onClick="myFunction()">&#9776;</span>
            <ul id="menu">
            <li><a href="index.php">HOME</a></li>
            <li><a href="about.php">ABOUT US</a></li>
            <li><a href="service.php">SERVICE</a></li>
            <li><a href="project.php">PROJECT +</a>

            <div class="dropdown">
            <ul>
               <?php
                include("confi.php");
                
                $select="SELECT * FROM `tbl_category`";

                $query=mysqli_query($con,$select);

                while($row=mysqli_fetch_assoc($query)){
                
               ?>
                <li><a href="projects-details.php?id=<?=$row['id'];?>"><?=$row['fld_category'];?></a></li>
                <?php
                }
                ?>
            </ul>
            
            </li>

            <li><a href="gallery.php">OUR GALLERY</a></li>
            <li><a href="certificate.php">CERTIFICATES</a></li>
            <li><a href="contact.php">CONTACT US</a></li>
             </ul>
         </div>
     
    
     </div>   
    
    <script>
        function myFunction(){
           var x = document.getElementById("menu"); 
            
            if(x.style.display == "block")
            {
                x.style.display = "none";
            }
            else{
                x.style.display = "block";
            }
        }
    </script>
</body>
</html>






