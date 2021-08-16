<%@ Page Language="C#" AutoEventWireup="true" CodeFile="roomtype.aspx.cs" Inherits="roomtype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <title>roomtype</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom-cs.css" rel="stylesheet" />
    <style>
        #footer {
            text-align:center;
            color:white;
            padding:20px 0px;
        }
        #rom {
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
      </ul>
    </nav>
        <br />
        <br />
    
        <div class="container">
            <div class="form-horizontal">
              <h4>Rooms</h4>
                <hr />
                  <div class="form-group">
                      <h2>Single</h2>
                      <asp:Image ID="Image1" runat="server" Height="139px" ImageUrl="~/images/room/1.png" Width="219px"/>
                      <div id="rom" >
                    <p style="margin:8px 0px;font-family:Arial;font-size:15px;line-height:18px;color:black;font-style:normal;font-variant:normal;orphans:initial;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:initial;word-spacing:0px;-webkit-text-stroke-width:0px;">
                        Maximum:1 person<br />
                        The single rooms features a confortable queen sized bed with a matttress designed to give you a restful sleep.
                    </p>
                     <p style="margin:8px 0px;font-family:Arial;font-size:20px;line-height:18px;color:darkmagenta;font-style:normal;font-variant:normal;orphans:initial;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:initial;word-spacing:0px;-webkit-text-stroke-width:0px;">
                       cost:Rs 3000
                   </p>
                   
                    <div class="col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="Book" CssClass="btn btn-dark" OnClick="Button1_Click" />
                        </div>
               
             </div>

               </div>
                <div class="form-group">
                      <h2>Double</h2>
                      <asp:Image ID="Image2" runat="server" Height="139px" ImageUrl="~/images/room/2.png" Width="219px"/>
                      <div id="rom" >
                    <p style="margin:8px 0px;font-family:Arial;font-size:15px;line-height:18px;color:black;font-style:normal;font-variant:normal;orphans:initial;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:initial;word-spacing:0px;-webkit-text-stroke-width:0px;">
                        Maximum:2 person<br />
                        The Double rooms features a king-sized bed that  gives you a feeling of sleep at home awayfrom home.
                    </p>
                        <p style="margin:8px 0px;font-family:Arial;font-size:20px;line-height:18px;color:darkmagenta;font-style:normal;font-variant:normal;orphans:initial;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:initial;word-spacing:0px;-webkit-text-stroke-width:0px;">
                       cost:Rs 5000
                   </p>
                   
                    <div class="col-md-6">
                        <asp:Button ID="Button2" runat="server" Text="Book" CssClass="btn btn-dark" OnClick="Button2_Click" />
                        </div>
               
             </div>
           </div>
           <div class="form-group">
                      <h2>Deluxe</h2>
                      <asp:Image ID="Image3" runat="server" Height="139px" ImageUrl="~/images/room/3.png" Width="219px"/>
                      <div id="rom" >
                    <p style="margin:8px 0px;font-family:Arial;font-size:15px;line-height:18px;color:black;font-style:normal;font-variant:normal;orphans:initial;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:initial;word-spacing:0px;-webkit-text-stroke-width:0px;">
                        Maximum:3 person<br />
                        The Deluxe rooms features the hotel's distintive modern design that cater your buisness and relaxation needs<br />
                        with king-sized bed.It has seperate bedroom and living spaces.the suite comes with bathtub and standing showers<br />
                        and guest can enjoy the minibar during their stay.
                    </p>
                   <p style="margin:8px 0px;font-family:Arial;font-size:20px;line-height:18px;color:darkmagenta;font-style:normal;font-variant:normal;orphans:initial;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:initial;word-spacing:0px;-webkit-text-stroke-width:0px;">
                       cost:Rs 9000
                   </p>
                    <div class="col-md-6">
                        <asp:Button ID="Button3" runat="server" Text="Book" CssClass="btn btn-dark" OnClick="Button3_Click" />
                        </div>
               
             </div>
           </div>
      
        </div>
    
    </div>
    </form>
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
