<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStateDemo.aspx.cs" Inherits="Day2.WebApps.ViewStateDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <table class="table w-50">
                <tr>
                    <td>
                        <asp:Label Text="ASP.NET" ID="Lbl1" runat="server" />
                    </td>
                    <td></td>
                    <td>
                        <asp:Label Text="ASP.NET Core" ID="Lbl2" EnableViewState="false"  runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="CHangeText" ID="BtnCHange" OnClick="BtnCHange_Click" runat="server" />
                    </td>
                    <td></td>
                    <td>
                        <asp:Button Text="ModifyText" ID="Btn2" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
