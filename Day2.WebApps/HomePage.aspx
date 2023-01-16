<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Day2.WebApps.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome To Home Page</h1>

            <asp:Label Text="" ID="LblMessage" runat="server" />
        </div>
        <div>
            <asp:Button Text="Go to Page2" ID="Btn1" OnClick="Btn1_Click" runat="server" />
        </div>
    </form>
</body>
</html>
