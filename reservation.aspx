<%@ Page Title="reservation form" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="reservation.aspx.cs" Inherits="reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
             background-image: url("images/bgimh.jpg");
            background-size: cover;
        
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
            <br />
            <asp:Label ID="Label0" runat="server" Text="customer name" Font-Italic="true" font-size="Large"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tfirstname" runat="server" Width="487px" Height="30px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tfirstname" ErrorMessage="Please enter the first name" Text="*" ForeColor="red"></asp:RequiredFieldValidator> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
            <br />
            
             <%--<hr />--%>
            <h5>Enter your Identification</h5>
            <br />
            
            <asp:Label ID="Label5" runat="server" Text="Aadhar card" Font-Italic="true" font-size="Large" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;<asp:CheckBox ID="CheckBox1" Text="yes" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"/>
            <asp:CheckBox ID="CheckBox2" Text="no" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged"/>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label14" runat="server" Text="Idno" Font-Italic="true" font-size="Large" ></asp:Label>&nbsp; <asp:TextBox ID="tidno" runat="server" Width="291px" Height="30px" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid adhar card no" ControlToValidate="tidno" Text="*" ForeColor="red" ValidationExpression="^(\d{12}|\d{16})$" ></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tidno" ErrorMessage="Please enter the adhar card number" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
             <hr />
            <h5>Information for hotel</h5>
            <br />
            <asp:Label ID="Label7" runat="server" Text="No of adults" Font-Italic="true" font-size="Large" ></asp:Label><asp:TextBox ID="tnoadults" runat="server" Width="235px" TextMode="Number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tnoadults" ErrorMessage="Please enter the number your adults " Text="*" ForeColor="red"></asp:RequiredFieldValidator>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label15" runat="server" Text="No of children" Font-Italic="true" font-size="Large"></asp:Label>&nbsp;&nbsp; <asp:TextBox ID="Tnochildren" runat="server" Width="291px" TextMode="Number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Tnochildren" ErrorMessage="Please enter the children till age of 7"  Text="*" ForeColor="red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label16" runat="server" Text="Purpose" Font-Italic="true" font-size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tpurpose" runat="server" Width="235px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please enter the  purpose for stay " ControlToValidate="tpurpose" Text="*" ForeColor="red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label17" runat="server" Text="No of days" Font-Italic="true" font-size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList5" runat="server" Width="291px">
                <asp:ListItem>Enter the number of days for stay</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
            </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList5" InitialValue="Enter the number of days for stay" ErrorMessage="Please enter the number of days for staying"  Text="*" ForeColor="red"></asp:RequiredFieldValidator>
            <br /> 
        <br />
        <asp:Label ID="Label1" runat="server" Text="Roomid" Font-Italic="true" font-size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="235px" ReadOnly="True"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please search the room name" Text="*" ForeColor="red"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <hr />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="blue"/>
         <asp:Button ID="Button1" runat="server" CssClass="btn-group-lg" Text="Submit" OnClick="Button1_Click" /><asp:Label ID="Label10" runat="server"></asp:Label>
             </div> 
    
</asp:Content>

