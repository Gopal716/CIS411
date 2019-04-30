<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountDetails.aspx.cs" Inherits="Assignment2.AccountPages.AccountDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 427px;
        }
        .auto-style4 {
            width: 345px;
        }
        .auto-style5 {
            width: 219px;
        }
        .auto-style6 {
            width: 334px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="Account Name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="AccountNameLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Account Type"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="AcctTypeLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="Account Balance"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="BalanceLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="withdrawTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="withdrawButton" runat="server" OnClick="withdrawButton_Click" Text="Withdraw Money" />
                </td>
                <td>
                    <asp:Label ID="WithdrawErrorLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="Eligible For Loan:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="LoanLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="LoanButton" runat="server" PostBackUrl="~/AccountPages/LoanApplicationPage.aspx" Text="Want a Loan?" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="Address Provided:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="AddressLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
