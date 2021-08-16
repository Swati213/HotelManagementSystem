<%@ Page Title="conformation page " Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="conformation.aspx.cs" Inherits="conformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            background-image: url("images/pexels-photo-255379.jpeg");
            background-size: cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-top:50px;">
<div style="font-size: x-large; color: #000080">
 <p>Thankyou for booking in our hotel</p>

   <p>your roomid will be <asp:Label ID="Label1" runat="server" ></asp:Label></p>
  <p >Payment will be done by cash on check in</p> 
</div> 

    </div>
</asp:Content>

