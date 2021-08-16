<%@ Page Title="price summary" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="confirmbook.aspx.cs" Inherits="confirmbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/bootstrap-glyphicons.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-top:50px;">
      <div class="col-md-8">
<div class="media" style="border:1px solid #eaeaec; background-color: #C0C0C0;">
  <img width="100px" src="images/thum.jpg" class="align-self-start mr-3" alt="hotel"/>
  <div class="media-body">
      <asp:Label ID="Label2" runat="server" Text="Roomid" Font-Italic="True" Font-Size="X-Large" ForeColor="#00CC66" Font-Bold="True"></asp:Label> <asp:TextBox ID="TextBox1" runat="server" BackColor="#C0C0C0" BorderColor="White" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="#66FF99" ReadOnly="True" Height="7px"></asp:TextBox>
       <br />
      <br />
      <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-ok"></span> 
        </button>NEWSPAPER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<button type="button" class="btn btn-default btn-sm" >
          <span class="glyphicon glyphicon-ok"></span> 
        </button>WIFI&nbsp;&nbsp;&nbsp;
      <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-ok"></span> 
        </button>ROOM SERVICE&nbsp;&nbsp;&nbsp;
      <button type="button" class="btn btn-default btn-sm">
         <span class="glyphicon glyphicon-ok"></span> 
        </button>COMPLENTRY TEA OR COFFEE&nbsp;&nbsp;&nbsp;
     
       </div>
</div>
 </div>

        <br />
        <br />
         <h5 class="priceview" style="font-size: x-large; color: #000080">PRICE DETAILS</h5>

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="40px">
             <Columns>
                 <asp:BoundField DataField="sno" HeaderText="S.no" />
                 <asp:BoundField DataField="roomid" HeaderText="Roomid" />
                 <asp:BoundField DataField="room_no" HeaderText="Room_no" />
                 <asp:BoundField DataField="room_type" HeaderText="Room_type" />
                 <asp:BoundField DataField="room_price" HeaderText="Price" />
                 <asp:BoundField DataField="hotal_rent" HeaderText="Hotal Rent" />
                 <asp:BoundField DataField="tax" HeaderText="Tax" />
                 <asp:BoundField DataField="total_price" HeaderText="Total Price" />
             </Columns>
         </asp:GridView>
         </div>
        <br />
    <asp:Label ID="Label3" runat="server"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="CONFIRM BOOK" CssClass="align-content-center" ForeColor="#009933" OnClick="Button1_Click" />
</asp:Content>

