<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apartment.aspx.cs" Inherits="HTML_Class.Apartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 543px;
        }
        .auto-style4 {
            width: 491px;
        }
        .auto-style5 {
            width: 842px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ApartmentTypeDD" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ApartmentTypeDD_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">Apt#</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="ApartNumberTB" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">Apartment Description</td>
                    <td class="auto-style4">
                        <asp:Label ID="ApartmentDescriptionLabel" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="SelectButton" runat="server" Text="Select" />
                    </td>
                    <td class="auto-style3">Message</td>
                    <td class="auto-style4">
                        <asp:Label ID="MessageLabel" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="AptNumberRequiredFieldValidator" runat="server" ControlToValidate="ApartNumberTB" ErrorMessage="The apartment number is required!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:RangeValidator ID="ApartmentNumberRangeValidator" runat="server" ErrorMessage="The apartment number should be 1000 to 2000." Font-Bold="True" ForeColor="#0066FF" MaximumValue="2000" MinimumValue="1000" Type="Integer"></asp:RangeValidator>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
