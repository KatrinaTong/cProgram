<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewData.aspx.cs" Inherits="MoneyBMineWP.Pages.ViewData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                <h2 align="center">Historical data from Foreign Stock Market</h2>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" pagesize="15" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="stock_symbol,date" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="exchange" HeaderText="exchange" SortExpression="exchange" />
                    <asp:BoundField DataField="stock_symbol" HeaderText="stock_symbol" ReadOnly="True" SortExpression="stock_symbol" />
                    <asp:BoundField DataField="date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="date" ReadOnly="True" SortExpression="date" />
                    <asp:BoundField DataField="stock_price_open" HeaderText="price_open" SortExpression="stock_price_open" />
                    <asp:BoundField DataField="stock_price_high" HeaderText="price_high" SortExpression="stock_price_high" />
                    <asp:BoundField DataField="stock_price_low" HeaderText="price_low" SortExpression="stock_price_low" />
                    <asp:BoundField DataField="stock_price_close" HeaderText="price_close" SortExpression="stock_price_close" />
                    <asp:BoundField DataField="stock_volume" HeaderText="volume" SortExpression="stock_volume" />
                    <asp:BoundField DataField="stock_price_adj_close" HeaderText="price_adj_close" SortExpression="stock_price_adj_close" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NYSEDataConnectionString %>" SelectCommand="SELECT * FROM [NYSEData]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
