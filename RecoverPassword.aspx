<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

  <html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <title>Reset Password!</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom-cs.css" rel="stylesheet" />
    <style>
        
        body {
            background-image:url("images/water-1330252_1920.jpg");
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

              </li>
<li class="nav-item">
       <a class="nav-link "   href="Services.aspx">Services</a>
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
       <a class="nav-link" href="login.aspx" >Login</a>
       </li>
         </ul>
     
      </nav>
       
     </div>
  <!-------------navigation --------------->
  <div class="container">
            <div class="for-horizontal">
                <h2>Reset Password</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Lblmsg" runat="server" CssClass="col-md-2 control-label" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblpassword" runat="server" CssClass="col-md-2 control-label" Text="New password" Visible="False"></asp:Label>
                    <div class="col-md-3">
                           <asp:TextBox ID="tbnewpass" CssClass="form-control"  runat="server" TextMode="Password" Visible="False"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidatornewpass" CssClass="text-danger" runat="server" ControlToValidate="tbnewpass" ErrorMessage="Please enter your new password!"></asp:RequiredFieldValidator>
                    </div>
               </div>
                <div class="form-group">
                    <asp:Label ID="lblretypepass" runat="server" CssClass="col-md-2 control-label" Text="Confirm password" Visible="False"></asp:Label>
                    <div class="col-md-3">
                           <asp:TextBox ID="tbconfirmpass" CssClass="form-control"  runat="server" TextMode="Password" Visible="False"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorpass" runat="server" CssClass="text-danger"  ErrorMessage="Both password must same!" ControlToValidate="tbnewpass" ControlToCompare="tbconfirmpass"></asp:CompareValidator>
                    </div>
               </div>
                
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btRecpass" runat="server" CssClass="btn btn-info" Text="Reset" Visible="False" OnClick="btRecpass_Click"  />
                    </div>
                </div>
            </div>
     
     
    </div>
    </form>
       <!----------footer-----> 
   <br />
    <br />               
<hr />
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
