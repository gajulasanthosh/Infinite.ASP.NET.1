<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Infinite.ASP.NET._1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock] FROM [Products]" UpdateCommand="Update Products Set UnitPrice = @UnitPrice where ProductId =@ProductId">
                <UpdateParameters>
                    <asp:Parameter Name="UnitPrice" />
                    <asp:Parameter Name="ProductId" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView CssClass="table table-hover w-50" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                    <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
