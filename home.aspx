<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

     
    <title>Grand Elite</title>
      <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/custom-cs.css" rel="stylesheet" />
    <style>
        #footer {
            text-align:center;
            color:white;
        }
    </style>
   </head>
<body>
<!-----------navigation------------------->
 
   <div>
     <nav class="navbar navbar-light bg-light" style="background-color: #e3f2fd;">
     <a class="navbar-brand" href="home.aspx"><span><img alt ="Logo" src="images/hostel.png" height="30" /></span>GRAND ELITE</a>
         
         <a class="nav justify-content-end" href="#" ></a>
         <ul class="nav nav-pills" >
         <li class="nav-item">
      <a class="nav-link active "  href="home.aspx" >Home</a>
      </li>
      <li class="nav-item">
       <a class="nav-link" id="about-tab"  href="aboutus.aspx"  >About</a>
       </li>
           <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="A1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Room
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="search1.aspx">Search</a>
          <div class="dropdown-divider"></div>
           <a class="dropdown-item" href="roomtype.aspx">Room types</a>
        </div>
      </li>
     
<li class="nav-item">
       <a class="nav-link "   href="Services.aspx" >Services</a>
       </li>
       
          
       <li class="nav-item">
       <a class="nav-link "   href="contactus.aspx" >Contact Us</a>
       </li>
     <li class="nav-item">
       <a class="nav-link "   href="gallery.aspx" >Gallery</a>
       </li>
         <li class="nav-item">
       <a class="nav-link"  href="map.aspx">Map</a>
       </li>
      
         <li class="nav-item">
       <a class="nav-link " href="login.aspx" >Login</a>
       </li>
         <li class="nav-item">
       <a class="nav-link"   href="signup.aspx" >Resister</a>
       
       </li>
     </ul>
     
      </nav>
    
     </div>
          
      
        

<!-------------navigation --------------->
       <!------carousel--------->

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
   <!----------Indicators-------->
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
    <!---------Wapper for slides-------->
  <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img src="images/0.jpg" class="d-block w-100" alt="hotel1">
        
    </div>
    <div class="carousel-item">
      <img src="images/9.jpg" class="d-block w-100" alt="hotel2">
    </div>
    
    <div class="carousel-item">
      <img src="images/1.jpg" class="d-block w-100" alt="hotel3">
    </div>
  </div>
  <!------controls------------>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  
    <!---------carousel------->
    <br />
    <!------middle contents------->
    <div class="container center">
        <div class="row">
            <div class="col-lg-4">
                <img class="rounded-circle" src="images/hotel.jpg" alt="hotel" height="100" width="100" />
                <p>The Grand Elite’s prime location at the most pulsating center of the city guarantees connectivity to business and leisure areas. Access to 24 hour internet, hi-tech equipment, gym, spa, swimming pools and restaurants makes our hotel an optimum business or leisure hub.</p>
            </div>
            <div class="col-lg-4">
                <img class="rounded-circle" src="images/food1.jpg" alt="food" height="100" width="100" />
                <p>The value of India food & beverage imports is on track to quadruple in the next decade, with rising consumption of food and rapidly growing Indian Hospitality Sector with increase numbers of Hotel rooms.</p>
            </div>
        <div class="col-lg-4">
                <img class="rounded-circle" src="images/market.jpg" alt="market" height="100" width="100" />
                <p>Walk through the market area of Old Allahabad to get a taste of a true Indian culture. All kinds from local medicinal herbs, birds, flowers, candles, statues, clothing, fruit to digital gadgets can be found here. The  Temple area is the place to take a peek at the daily life of every  combined with the  Mosque in the small Muslim area. This tour will give visitors a glimpse of a vibrant part of the  streets. Discover the infamous Chinatown and see how cuisine is deeply fused with old Indian recipes and traditions. Try different street foods and get a taste of Allahabad.</p>
            </div>
            </div>
        </div>
        <!------- middle contents------->
        <!--------footer---------------->
       <hr/>



        <footer >
            <div id="footer">
            <div class ="container-fluid" style="background-color:black">
                <p class="pull-right" style="text-align:right"><a href="#">back to top </a></p>  
                <p>&copy;2019GrandElite.com &middot;<a href="home.aspx">Home</a>&middot;<a href="about.aspx">about</a>&middot;<a href="reservation.aspx">reservation</a>&middot;<a href="menu.aspx">menu</a>&middot;<a href="contactus.aspx">contact us</a>&middot;<a href="gallery.aspx">Galllery</a>&middot;<a href="map.aspx">Map</a>&middot;<a href="login.aspx">login</a>&middot<a href="signup.aspx">Register</a></p>          
                <p>email:grandelite1234@gmail.com</p>
                <p>contact:9872165409</p>
                <p>address:Multi Functional complex,</p>
                 <p>Civil lines Railway station compound,</p>
                <p>Civil Lines,Prayagraj,UtterPradesh 211001</p>
                </div>
                 </div>
                   
                </footer>
                 
                 <!----------footer-----> 
      <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
            
                    </body>
                   </html> 
                   
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
      
      
