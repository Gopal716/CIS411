<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoanApplicationPage.aspx.cs" Inherits="Assignment2.AccountPages.LoanApplicationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 299px;
        }
        .auto-style3 {
            width: 961px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="NameLabel" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Salary"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="salaryTextBox" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="ageTextBox" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Loan Amount"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="loanAmtTextBox" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click" Text="Submit" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LoanApprovalLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="GoToAccSummaryButton" runat="server" PostBackUrl="~/AccountSummary.aspx" Text="Go to Account Summary" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="GoToAccDetButton" runat="server" PostBackUrl="~/AccountPages/AccountDetails.aspx" Text="Go to Account Details" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
