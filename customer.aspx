<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer.aspx.cs" Inherits="customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Customer Detail</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="roomid" HeaderText="roomid" SortExpression="roomid" />
                <asp:BoundField DataField="customer_name" HeaderText="customer_name" SortExpression="customer_name" />
                <asp:BoundField DataField="idtype" HeaderText="idtype" SortExpression="idtype" />
                <asp:BoundField DataField="idno" HeaderText="idno" SortExpression="idno" />
                <asp:BoundField DataField="adults" HeaderText="adults" SortExpression="adults" />
                <asp:BoundField DataField="child" HeaderText="child" SortExpression="child" />
                <asp:BoundField DataField="purpose" HeaderText="purpose" SortExpression="purpose" />
                <asp:BoundField DataField="days" HeaderText="days" SortExpression="days" />
                <asp:BoundField DataField="checkin" HeaderText="checkin" SortExpression="checkin" />
                <asp:BoundField DataField="checkout" HeaderText="checkout" SortExpression="checkout" />
                <asp:BoundField DataField="roomno" HeaderText="roomno" SortExpression="roomno" />
                <asp:BoundField DataField="room_type" HeaderText="room_type" SortExpression="room_type" />
                <asp:BoundField DataField="rooom_price" HeaderText="rooom_price" SortExpression="rooom_price" />
                <asp:BoundField DataField="hotal_rent" HeaderText="hotal_rent" SortExpression="hotal_rent" />
                <asp:BoundField DataField="tax" HeaderText="tax" SortExpression="tax" />
                <asp:BoundField DataField="total_price" HeaderText="total_price" SortExpression="total_price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterDatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [checkout]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
