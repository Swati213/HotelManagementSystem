<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>--%>
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <title>Login</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
   
  
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
       <a class="nav-link" id="about-tab"  href="aboutus.aspx">About</a>
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
       <a class="nav-link  active" href="login.aspx" >Login</a>
       </li>
         </ul>
     
      </nav>
       
     </div>
  <!-------------navigation --------------->
  <br/>
 <br />
  <!---------- login start------------->
        <div class="container ">
            <div class="form-horizontal">
                <h4>Login</h4>
                <hr />
    <div class="form-group">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"  Font-Italic="True" Font-Size="Larger"></asp:Label>
                    <br />
                    <br />
                   <div class="col-md-3">
                        <asp:TextBox ID="Username" CssClass="form-control"  runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is required!" ControlToValidate="Username"></asp:RequiredFieldValidator>
                   </div>
                  </div>
                 <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password" Font-Italic="True" Font-Size="Larger"></asp:Label>
                     <br />
                     <br />
                    <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control"  runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorpassword" CssClass="text-danger" runat="server" ErrorMessage="The Password field is required!" ControlToValidate="password"></asp:RequiredFieldValidator>

                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-md-2"></div>
                     <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
                    </div>
                 </div>
                <div class="form-group">
                   <div class="col-md-2"></div>
                        <div class="col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-dark" OnClick="Button1_Click"/>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/signup.aspx" CausesValidation="false">Register</asp:LinkButton>
                        </div>
                 </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                       <asp:LinkButton ID="lbForgotPass" runat="server" OnClick="lbForgotPass_Click" PostBackUrl="~/ForgotPassword.aspx">Forgot Password!</asp:LinkButton>
                    </div>

                </div>
                   <div class="form-group">
                    <div class="col-md-2"></div>
                     <div class="col-md-6">
                         <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    
                  </div>
                </div>
              </div>
            </div>
          </form>
        
  <!-----------Login end-------------->
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
