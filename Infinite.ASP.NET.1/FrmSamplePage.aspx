<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmSamplePage.aspx.cs" Inherits="Infinite.ASP.NET._1.FrmSamplePage" %><!--Page Directive-->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Sample Button" CssClass="btn btn-outline-primary" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Sample Button2" CssClass="btn btn-outline-danger" OnClick="Button2_Click"/>
            
        </div>
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Employee</asp:ListItem>
                <asp:ListItem>HR</asp:ListItem>
                
            </asp:DropDownList>
        </div>
        
    </form>
</body>
</html>
