<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contact_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <title>contact us</title>
   
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom-cs.css" rel="stylesheet" />
    <style>
        
        body {
            background-image:url("images/spilled-milk-on-blue.jpg");
            background-size: cover;
           
            }
        #footer {
            text-align:center;
            color:white;
            padding:20px 0px;
        }
        
</style>

    
</head>
<body>
    <form id="form1" runat="server">

    <div>
<!-----------navigation------------------->
 
   
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
          <a class="nav-link dropdown-toggle" href="#" id="A2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Room
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="search1.aspx">Search</a>
          <div class="dropdown-divider"></div>
           <a class="dropdown-item" href="roomtype.aspx">Room types</a>
        </div>
      </li>

       

         <li class="nav-item">
       <a class="nav-link "   href="Services.aspx">Services</a>
       </li>
       
       <li class="nav-item">
       <a class="nav-link  active"   href="contactus.aspx" >Contact Us</a>
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
         </ul>
          </nav>
       
     </div>
 
          <!-------------navigation --------------->
  <br/>
 <br />
  <div class="container ">
            <div class="form-horizontal">
                <h4>Contact Us</h4>
                <hr />
                <div class="form-group">
                     <asp:Label ID="Label1" runat="server" Text="NAME:" Font-Italic="true" font-size="Large"></asp:Label>
                       <div class="col-md-3">
                           <asp:TextBox ID="Txtname" runat="server" Width="328px"></asp:TextBox>                        
                           <asp:RequiredFieldValidator ID="RequiredFieldValidatorname" CssClass="text-danger" runat="server" ErrorMessage="The name field is required!" ControlToValidate="Txtname" ></asp:RequiredFieldValidator>
                      </div>
                    </div>
                    
                <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="EMAILID:" Font-Italic="true" font-size="Large"></asp:Label>
                        <div class="col-md-3">
                             <asp:TextBox ID="Txtemail" runat="server" Width="316px" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorname0" CssClass="text-danger" runat="server" ErrorMessage="The Emailid field is required!" ControlToValidate="Txtemail" ></asp:RequiredFieldValidator>
                         </div>
               </div>
               
                <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Subject:" Font-Italic="true" font-size="Large"></asp:Label>
                        <div class="col-md-3">
                             <asp:TextBox ID="Txtsub" runat="server" Width="316px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="The Subject field is required!" ControlToValidate="Txtsub" ></asp:RequiredFieldValidator>
                         </div>
               </div>
                
               <div class="form-group">
                 <asp:Label ID="Label3" runat="server" Text="Comments:" Font-Italic="true" font-size="Large"></asp:Label>
                  <div class="col-md-3">
                       <asp:TextBox ID="Txtmsg" runat="server" Width="316px" TextMode="MultiLine" Columns="5"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="The Comments field is required!" ControlToValidate="Txtmsg" ></asp:RequiredFieldValidator>
              </div>
                </div>

                
                  
                        <div class="col-xs-11" >
                            <asp:Button ID="Button1" runat="server"  class=" btn btn-success" Text="Submit" OnClick="Button1_Click1" />
                            <asp:Label ID="lblmsg" runat="server" ></asp:Label>
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
