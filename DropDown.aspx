<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDown.aspx.cs" Inherits="dropdown.DropDown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 29%;
        }
        .auto-style2 {
            width: 234px;
        }
        .auto-style3 {
            position: absolute;
            top: 16px;
            z-index: 1;
            left: 259px;
        }
        .auto-style4 {
            position: absolute;
            top: 79px;
            left: 258px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 138px;
            left: 259px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 201px;
            left: 257px;
            z-index: 1;
            width: 186px;
        }
        .auto-style7 {
            position: absolute;
            top: 265px;
            left: 286px;
            z-index: 1;
        }
        .auto-style8 {
            width: 234px;
            height: 39px;
        }
        .auto-style9 {
            height: 39px;
        }
        .auto-style10 {
            width: 589px;
            height: 180px;
            position: absolute;
            top: 333px;
            left: 10px;
            z-index: 1;
        }
    </style>
</head>
<body style="width: 1704px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Product Id</td>
                <td>
                    <asp:TextBox ID="txtpid" runat="server" CssClass="auto-style3" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Product Name</td>
                <td>
                    <asp:TextBox ID="txtpname" runat="server" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Price</td>
                <td>
                    <asp:TextBox ID="txtprice" runat="server" CssClass="auto-style5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Select Category</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style6">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Text="Save" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style10">
        </asp:GridView>
    </form>
</body>
</html>
