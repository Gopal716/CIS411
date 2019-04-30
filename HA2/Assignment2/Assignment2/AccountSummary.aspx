<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountSummary.aspx.cs" Inherits="Assignment2.AccountSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 408px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="customerLbl" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="accLbl" runat="server" Text="All Accounts"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:ListBox ID="accountListBox" runat="server" Height="129px" Width="256px"></asp:ListBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="detailsButton" runat="server" OnClick="detailsButton_Click" Text="Show Details" Width="233px" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="accountListBox" ErrorMessage="Select an Account!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
