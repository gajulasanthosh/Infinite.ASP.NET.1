<%@ Page Language="C#" AutoEventWireup="true"  %>

<!DOCTYPE html>
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("Submit button Clicked");
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        LblMessage.Text = $"Hi {TxtName.Text}, Welcome. You are a {DropDownList1.SelectedItem.ToString()}. Your DOb is {Calendar1.SelectedDate.ToString()}";

    }
</script>
<link href="CSS/bootstrap.min.css" rel="stylesheet" />


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>

        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label Text="Enter Your Name" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TxtName"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="User Type" runat="server" />
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Employee</asp:ListItem>
                            <asp:ListItem>HR</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Select DOB" runat="server" />
                    </td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button Text="Submit" ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label Text="" ID="LblMessage" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
