<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cascading.aspx.cs" Inherits="dropdown.Cascading" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 57%;
        }
        .auto-style2 {
            width: 182px;
        }
        .auto-style3 {
            position: absolute;
            top: 201px;
            left: 233px;
            z-index: 1;
        }
        .auto-style4 {
            width: 659px;
            height: 180px;
            position: absolute;
            top: 273px;
            left: 36px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">`Select Country</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="192px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Select State</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="188px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Select City</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="188px"></asp:DropDownList></td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="Save" />
        </p>
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style4">
        </asp:GridView>
    </form>
</body>
</html>
