<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Question1.aspx.cs" Inherits="Question1.Question1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 921px;
        }
        .auto-style3 {
            width: 243px;
        }
        .auto-style4 {
            width: 218px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="headerLabel" runat="server" Text="Book Purchase Website"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="selectBookDDL" runat="server" Width="503px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="addQuanLbl" runat="server" Text="Add Quantity"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="addQuantityTB" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="purchaseBtn" runat="server" OnClick="purchaseBtn_Click" Text="Purchase" Width="345px" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="responseLbl" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="QuantityRequiredFieldVal" runat="server" ControlToValidate="addQuantityTB" ErrorMessage="Quantity is required, as a number in the range of 1 to 10."></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RangeValidator ID="QuantityRangeValidator" runat="server" ControlToValidate="addQuantityTB" ErrorMessage="The quantity should be in the range of 1 to 10." MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
