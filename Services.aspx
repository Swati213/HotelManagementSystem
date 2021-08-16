<%@Page Language="C#" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <title>services</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom-cs.css" rel="stylesheet" />
    <style>
        body {
            background-image: url("images/bgimh.jpg" );
            background-size: cover;
        }
        #footer {
            text-align:center;
            color:white;
            padding:20px 0px;
        }
        #fac {
            position:relative;
            left:229px;
            top:-132px;
            width:500px;
            height:59px;
        }
    </style>
    
</head>
<body>
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
       <a class="nav-link" id="about-tab"  href="aboutus.aspx" >About</a>
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
      </nav>
        
      <br />
        <asp:Image ID="image1" runat="server"  ImageUrl="~/images/services/1.png" Height="300px" width="1350px" />
        <h4>Facillities</h4>
        <div class="container">
                <asp:Image ID="Image2" runat="server" Height="139px" ImageUrl="~/images/services/4.png" Width="219px" />
                <div id="fac" >
                    <p style="margin:8px 0px;font-family:Arial;font-size:15px;line-height:18px;color:black;font-style:normal;font-variant:normal;orphans:initial;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:initial;word-spacing:0px;-webkit-text-stroke-width:0px;">
                        Guests at the hotel can enjoy and relax at the roof-top pool which has a luxurious bar nearby.
                    </p>
             </div>
            <p>

              &nbsp;</p>
            <asp:Image ID="Image3" runat="server" Height="139px" ImageUrl="~/images/services/1.png" Width="219px"/>
                <div id="fac" >
                    <p style="margin:8px 0px;font-family:Arial;font-size:15px;line-height:18px;color:black;font-style:normal;font-variant:normal;orphans:initial;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:initial;word-spacing:0px;-webkit-text-stroke-width:0px;">
                        Our hotel provides a state-of-the-art gym that helps the guests to do their<br/>daily workouts
                        and maintain fitness even when they are away from their home.
                    </p>
             </div>

                   <p>

              &nbsp;</p>
            <asp:Image ID="Image4" runat="server" Height="139px" ImageUrl="~/images/services/2.png"  Width="219px"/>
                <div id="fac" >
                    <p style="margin:8px 0px;font-family:Arial;font-size:15px;line-height:18px;color:black;font-style:normal;font-variant:normal;orphans:initial;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:initial;word-spacing:0px;-webkit-text-stroke-width:0px;">
                        The spa at our hotel featuresrejuvenating massage and facial services,<br/>along
                        with our signature body treatments,refresh and relax your mind and body.
                    </p>
             </div>
        </div>
 
        </div>
 
          </form>
    <p>

              &nbsp;</p>
            
 <!----------footer-----> 
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
