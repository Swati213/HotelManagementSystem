<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <title>About</title>
   
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
 <form id="form1" runat="server">
    
   <div>
     <nav class="navbar navbar-light bg-light" style="background-color: #e3f2fd;">
     <a class="navbar-brand" href="home.aspx"><span><img alt ="Logo" src="images/hostel.png" height="30" /></span>GRAND ELITE</a>
         
         <a class="nav justify-content-end" href="#" ></a>
         <ul class="nav nav-pills" >
         <li class="nav-item">
      <a class="nav-link  "  href="home.aspx" >Home</a>
      </li>
      <li class="nav-item">
       <a class="nav-link active" id="about-tab"  href="aboutus.aspx" >About</a>
       </li>
          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="A1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Room
        </a>
        <div class="dropdown-menu" aria-labelledby="A1">
          <a class="dropdown-item" href="search1.aspx">Search</a>
          <div class="dropdown-divider"></div>
           <a class="dropdown-item" href="roomtype.aspx">Room types</a>
        </div>
      </li>
<li class="nav-item">
       <a class="nav-link "   href="search.aspx" >Services</a>
       </li>
       
         <li class="nav-item">
       <a class="nav-link "   href="contactus.aspx" >Contact Us</a>
       </li>
     <li class="nav-item">
       <a class="nav-link "   href="gallery.aspx">Gallery</a>
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
     <!------carousel--------->

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
   <!----------Indicators-------->
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
     <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>

  </ol>
    <!---------Wapper for slides-------->
  <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img src="images/aboutus/10.jpg" class="d-block w-100" alt="hotel1"/>
        
    </div>
    <div class="carousel-item">
      <img src="images/aboutus/11.jpg" class="d-block w-100" alt="hotel2"/>
    </div>
    
    <div class="carousel-item">
      <img src="images/aboutus/2.jpg" class="d-block w-100" alt="hotel3"/>
    </div>
      <div class="carousel-item">
      <img src="images/aboutus/7.jpg" class="d-block w-100" alt="hotel3"/>
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
 
    
     </div>
       <div class="container" >
           <div class="col-lg-11">
               <p>The Grand Elite hotel is located off Civil lines road, the exiting business and shopping area of the city.This hotel offers a 24-hour reception,resturdantand mini bar.</p>
              <p> Stylished air-conditioned rooms features modern furnishings and a private bathroom facilities.Each is equipped with a LED TV,DVD player and a fridge.A personal safe is also  included.</p>
              <p> Guests  can work out at the well-equipped fittness centre,or enjoy massage and spa treatment at aura.Massage and spa treatment requred additional charges.</p> 
              <p>The 24 - hour  HotelIn resurdant serves a selection of indian and international dishes,while also seves italian and chineese dishes.Drinks can be enjoy at our minibar or pool side.</p>
                <div class="align-content-center" style="text-decoration: underline; font-size: xx-large; color: #800000; font-style: italic; font-weight: bold;text-align:left ">Facilities</div>
               <div class="col-md-4">
                   <ul>
                       <li>Swimming pool</li>
                       <li>Gym</li>
                       <li>Newspaper</li>
                       <li>laundary service</li>
                       <li>Room service</li>
                       <li>mini bar</li>
                       <li>In-Hotel resturdant</li>
                       <li>spa</li>
                       <li>Bueaty palour</li>
                       <li>Baby Sitting sevvices</li>
                        <li>Each room individually designed and furnished with Collectors Art works</li>
                        <li>All rooms are smoke free.</li>
                        <li>Doctor on call</li>
                        <li>Postal/parcel services</li>
                         <li>Free Wi-Fi internet access throughout the hotel</li>
                         <li>Free public parking</li>
                         <li>Welcome drink upon arrival</li>
                          <li>free tea or coffee services </li>
                   </ul>
                   </div>
                   <h3>Hotel policies</h3>
                   </div>
                   <h4>Check-in</h4>
                   <p>From 14:00</p>
                   <h4>Check-out</h4>
                   <p>From 12:00</p>
                   <h4>Cancellation/Payment</h4>
                   <p>Cancellation and payment policies vary according to room type</p>
                   <h4>Pets</h4>
                   <p>Pets are not allowed</p>
                   <h4>Accepted credit cards</h4>
                   <p>American Express,Visa,Mastercard,Maestro</p>
                   <p>paytm,amazon pay,phonepe are acceptable</p>
                   <h2>Children and Extra bed</h2>
                   <h4>Child policies</h4>
                   <p>Children of any age are welcome.</p>
                   <p>Children aged 13 years and above are considered adults at this hotel.</p>
                   <p style="font-style: normal; font-weight: bolder">please add number of children and age at your search.</p>
                   <h4>Cot and bed policies</h4>
                   <p>There is no capacity of extra bed at this hotel</p>
                   <p>there is capaity for cot at the hotel but for children less than 13 years with additional charge apply.</p>
                   <h4>Important information</h4>
                   <p>Please inform the Grand Elite in advance of your expected arrival time.Guests are required to show a photo identification and credit card/UPID upon check-in.</p>
               <h4>Food and drink facilities</h4>
               <h5>In the hotel</h5>
               <ul>
                   <li>coffee or tea</li>
                   <li>Bottle of water</li>
                   <li>Breakfast in room</li>
                   <li>Packed lunches</li>
               </ul>
              <p>Menu is in every room,if you have request for breakfast and lunch,you can do after you choose your request</p>
       
      <h4>Question you may have</h4>
     <p style="font-weight: bolder">Is there a designated smoking Area</p>
     Yes

     <p style="font-weight: bolder">Is there a daily Cleaning Services</p>
     yes
      </div>
           
    </form>
  <!--------footer---------------->
       <hr/>

     <br />
    <br />               
<hr/>
    <footer class="footer-pos">
            

            <div class ="container" style="background-color:black;text-align:center">
               
                                  
                <p class="text-muted">&copy;2019GrandElite.com &middot;<a href="home.aspx">Home</a>&middot;<a href="about.aspx">about</a>&middot;<a href="roomtype.aspx">room</a>&middot;<a href="Services.aspx">services</a>&middot;<a href="contactus.aspx">contact us</a>&middot;<a href="gallery.aspx">Galllery</a>&middot;<a href="map.aspx">Map</a>&middot;<a href="login.aspx">login</a>&middot<a href="signup.aspx">Register</a><span class="float-right"><a href="#">back to top </a></span></p>        
                
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
