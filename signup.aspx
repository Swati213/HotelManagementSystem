<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <title>Register</title>
    

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
       <a class="nav-link "   href="contactus.aspx">Contact Us</a>
       </li>
     <li class="nav-item">
       <a class="nav-link "   href="gallery.aspx">Gallery</a>
       </li>
         <li class="nav-item">
       <a class="nav-link"  href="map.aspx">Map</a>
       </li>
      
         <li class="nav-item">
       <a class="nav-link active"   href="signup.aspx" >Resister</a>
       
     </li>
     </ul>
     </nav>
    
     </div>
<!--------sign up--------------->

<div class="center-page">
    <h4>Register</h4>
    <hr/>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="firstname">Firstname</label>
        <asp:TextBox ID="TextBox1" runat="server" Class="form-control" placeholder="firstname" ></asp:TextBox>
    </div>
    <div class="form-group col-md-6">
      <label for="inputlastname">lastname</label>
       <asp:TextBox ID="TextBox2" runat="server" Class="form-control" placeholder="lastname" ></asp:TextBox>
    </div>
  </div>
     <div class="form-row">
 <div class="form-group col-md-6">
      <label for="inputdob">Gender</label>
     <asp:RadioButton GroupName="gender" ID="RadioButton1" Text="Male" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" /><asp:RadioButton GroupName="gender" ID="RadioButton2" Text="Female" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" />
    </div>

     <div class="form-group col-md-6">
      <label for="inputdob">D.O.B</label>
            <asp:TextBox ID="TextBox3" runat="server" Class="form-control" textmode="Date"></asp:TextBox>
    </div>
 </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
      <asp:TextBox ID="TextBox4" runat="server" Class="form-control" placeholder="1234 Main St" ></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <asp:TextBox ID="TextBox5" runat="server" Class="form-control" placeholder="Apartment, studio, or floor"></asp:TextBox>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCountry">Country</label>
      <asp:TextBox ID="TextBox6" runat="server" Class="form-control"></asp:TextBox>
    </div>
    <div class="form-group col-md-4">
      <label for="inputcity">City</label>
     <asp:TextBox ID="TextBox7" runat="server" Class="form-control"></asp:TextBox>
 </div>
    <div class="form-group col-md-2">
      <label for="inputstate">state</label>
    <asp:TextBox ID="TextBox8" runat="server" Class="form-control"></asp:TextBox>
    </div>
  </div>
<div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputZip">Zip</label>
      <asp:TextBox ID="TextBox9" runat="server" Class="form-control" ></asp:TextBox>
   </div>
    <div class="form-group col-md-6">
      <label for="inputphonenumber">Phoneno</label>
         <asp:TextBox ID="TextBox10" runat="server" Class="form-control" textmode="Phone"></asp:TextBox>

    </div>
  </div>
   <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
     <asp:TextBox ID="TextBox11" runat="server" Class="form-control" textmode="Email"></asp:TextBox>
  </div>
    <div class="form-group col-md-6">
     <label  for="inputusername">Username</label>
      <div class="input-group mb-2">
        <div class="input-group-prepend">
          <div class="input-group-text">@</div>
        </div>
        <asp:TextBox ID="TextBox12" runat="server" Class="form-control"></asp:TextBox> 

      </div>
    
      </div>
  </div>

   <div class="form-row">
    <div class="form-group col-md-6">
   <label for="inputPassword4">Password</label>
   <asp:TextBox ID="TextBox13" runat="server" Class="form-control" textmode="Password" aria-describedby="passwordHelpInline" ></asp:TextBox>
    <small id="passwordHelpInline" class="text-muted">
      Must be 8-20 characters long.
    </small>
  
      </div>
    <div class="form-group col-md-6">
      <label for="inputconfirmpassword">confirm password</label>
          <asp:TextBox ID="TextBox14" runat="server" Class="form-control" textmode="Password" ></asp:TextBox>
    </div>
  </div>
 
    
    
        <asp:Button ID="btsignup" runat="server"  class="btn btn-success"  Text="Sign up" OnClick="btsignup_Click" />
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
  
    
   
    </form>        
<!-------------sign up------------->
 <!----------footer-----> 
          <br />
    <br />               
<hr />
  <footer class="footer-pos">
            

            <div class ="container" style="background-color:black;text-align:center">
               
                                  
                                <p class="text-muted">&copy;2019GrandElite.com &middot;<a href="home.aspx">Home</a>&middot;<a href="about.aspx">about</a>&middot;<a href="roomtype.aspx">room</a>&middot;<a href="Services.aspx">services</a>&middot;<a href="contactus.aspx">contact us</a>&middot;<a href="gallery.aspx">Galllery</a>&middot;<a href="map.aspx">Map</a>&middot;<a href="login.aspx">login</a>&middot<a href="signup.aspx">Register</a><span class="float-right"><a href="#">back to top </a></span></p>        

       </div>
      
 
              </footer>
  <!--------------------footer----------->         
 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  </body>

</html>

