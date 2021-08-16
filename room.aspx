<%@ Page Language="C#" AutoEventWireup="true" CodeFile="room.aspx.cs" Inherits="useriddetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">


    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <title>room</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom-cs.css" rel="stylesheet" />
    <style>
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
      <div>
        <nav class="navbar navbar-light bg-light" style="background-color: #e3f2fd;">
     <a class="navbar-brand" href="home.aspx"><span><img alt ="Logo" src="images/hostel.png" height="30" /></span>GRAND ELITE</a>
         
         <a class="nav justify-content-end" href="#" ></a>
         <ul class="nav nav-pills" >
         <li class="nav-item">
      <a class="nav-link  "  href="home.aspx" >Home</a>
      </li>
      <li class="nav-item">
       <a class="nav-link"   href="aboutus.aspx">About</a>
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

          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Menu
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="checkin.aspx">CheckIn</a>
          <a class="dropdown-item" href="checkout.aspx">CHeckOut</a>
          <div class="dropdown-divider"></div>
          
          <a class="dropdown-item" href="Services.aspx">services</a>
          <div class="dropdown-divider"></div>
         

       </div>
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
          <h2>Hello admin! </h2>
          <br />
          <hr />
          <br />
          <h3>Room Update insert and delete page</h3>
          <hr />
      <div class="container">
          <asp:Label ID="Label1" runat="server" Text="Room no:"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
          <asp:TextBox ID="troomno" runat="server" Width="192px"></asp:TextBox>
          <br />
          <br />
          <asp:Label ID="Label5" runat="server" Text="Room type:"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="199px">
              <asp:ListItem>Select room</asp:ListItem>
              <asp:ListItem>single</asp:ListItem>
              <asp:ListItem>double</asp:ListItem>
              <asp:ListItem>dulex</asp:ListItem>
          </asp:DropDownList>
          <br />
          <br />
          <asp:Label ID="Label6" runat="server" Text="Room price:"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:DropDownList ID="DropDownList3" runat="server" Height="26px" Width="199px">
              <asp:ListItem>Select room price</asp:ListItem>
              <asp:ListItem>3000</asp:ListItem>
              <asp:ListItem>5000</asp:ListItem>
              <asp:ListItem>9000</asp:ListItem>
          </asp:DropDownList>
          <br />
          <br />
          <asp:Label ID="labe1" runat="server" Text="Floor"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" Width="198px">
          <asp:ListItem>Select Floor</asp:ListItem>
<asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        
         </asp:DropDownList>
          <br />
          <br />
           <asp:Label ID="Label2" runat="server" Text="Staus"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList4" runat="server" Width="196px">
          <asp:ListItem>Select staus</asp:ListItem>
          <asp:ListItem>Available</asp:ListItem>
        
         </asp:DropDownList>
          <br />
         <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button1" runat="server" CssClass="btn-danger" Text="Insert" OnClick="Button1_Click" Width="76px" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label7" runat="server"></asp:Label>

      </div> 
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="roomid" DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:BoundField DataField="roomid" HeaderText="roomid" InsertVisible="False" ReadOnly="True" SortExpression="roomid" />
                  <asp:BoundField DataField="room_no" HeaderText="room_no" SortExpression="room_no" />
                  <asp:BoundField DataField="room_type" HeaderText="room_type" SortExpression="room_type" />
                  <asp:BoundField DataField="room_price" HeaderText="room_price" SortExpression="room_price" />
                  <asp:BoundField DataField="floor_no" HeaderText="floor_no" SortExpression="floor_no" />
                  <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterDatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [room]"></asp:SqlDataSource>
          <br />
        
          <asp:ValidationSummary  ID="ValidationSummary2" ForeColor="red" runat="server" />

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
