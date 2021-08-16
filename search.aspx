<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">


    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <title>Search</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom-cs.css" rel="stylesheet" />
    
    <link href="css/search.css" rel="stylesheet" />
    <style>
        body {
            margin:0;
            padding:0;
            background-image: url("images/maxresdefault.jpg" );
            background-size: cover;
            font-family:sans-serif;
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
           <a class="dropdown-item active" href="roomtype.aspx">Room types</a>
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
        <div class="searchbox">
            <img src="images/search.png" alt="Alternate Text" class="user" />
            <h2 style="color: #800000">Search</h2>
                    <asp:Label ID="Label1" runat="server" Text="Room Type" CssClass="lblroom"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="droproom">
                        <asp:ListItem>Select room type</asp:ListItem>
                         <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>Double</asp:ListItem>
                        <asp:ListItem>Dulex</asp:ListItem>
                   </asp:DropDownList>
                   <asp:Label ID="Label2" runat="server" Text="Check-In" CssClass="lblcheckin"></asp:Label>
                    <asp:TextBox ID="txtcheckin" runat="server" CssClass="txtcheckin" TextMode="Date"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text="Check-Out" CssClass="lblcheckout"></asp:Label>
                    <asp:TextBox ID="txtcheckout" runat="server" CssClass="txtcheckout" TextMode="Date"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Text="Adults" CssClass="lbladults"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="txtadults" TextMode="Number" placeholder="Adults"></asp:TextBox>
                    <asp:Label ID="Label5" runat="server" Text="Child" CssClass="lblchild"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="txtchild" TextMode="number" placeholder="Child"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btnsubmit"  OnClick="Button1_Click"/>
               </div>
        </div>
         

           
   

               <asp:GridView ID="GridView1" runat="server" CssClass="gridsearch" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateColumns="False" DataKeyNames="roomid" DataSourceID="SqlDataSource1" Width="218px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                   <AlternatingRowStyle BackColor="PaleGoldenrod" />
                   <Columns>
                       <asp:BoundField DataField="roomid" HeaderText="roomid" InsertVisible="False" ReadOnly="True" SortExpression="roomid" />
                       <asp:BoundField DataField="room_no" HeaderText="room_no" SortExpression="room_no" />
                       <asp:BoundField DataField="room_type" HeaderText="room_type" SortExpression="room_type" />
                       <asp:BoundField DataField="room_price" HeaderText="room_price" SortExpression="room_price" />
                       <asp:BoundField DataField="floor_no" HeaderText="floor_no" SortExpression="floor_no" />
                       <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                       <asp:CommandField ShowSelectButton="True" />
                   </Columns>
                   <FooterStyle BackColor="Tan" />
                   <HeaderStyle BackColor="Tan" Font-Bold="True" />
                   <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                   <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                   <SortedAscendingCellStyle BackColor="#FAFAE7" />
                   <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                   <SortedDescendingCellStyle BackColor="#E1DB9C" />
                   <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                  </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterDatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [room] where status='available'"></asp:SqlDataSource>
       
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
