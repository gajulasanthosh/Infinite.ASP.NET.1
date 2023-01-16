<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormData2.aspx.cs" Inherits="Day2.WebApps.FormData2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="h2">
            <asp:Label Text="" ID="LblMessage" runat="server" />
            
        </div>
        <asp:Button Text="Sign Out" ID="BtnSignOut" OnClick="BtnSignOut_Click"  runat="server" />
        <div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">Select a City</label>
                        <div class="col-md-8">
                            <asp:DropDownList ID="DdlCountries" runat="server" OnSelectedIndexChanged="DdlCountries_SelectedIndexChanged" AutoPostBack="true">                               
                            </asp:DropDownList>
                            <asp:TextBox ID="TxtName" runat="server" />
                            <asp:Button Text="Search" ID="BtnSearch" OnClick="BtnSearch_Click" runat="server" />
                        </div>
                    </div>
                    <asp:GridView CssClass="table table-hover" ID="GridCustomer" runat="server"></asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
