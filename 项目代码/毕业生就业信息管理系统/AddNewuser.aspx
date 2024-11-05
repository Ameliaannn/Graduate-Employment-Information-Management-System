<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewuser.aspx.cs" Inherits="毕业生就业信息管理系统.AddNewuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 136px;
        }
        .auto-style2 {
            width: 126px;
            text-align: right;
        }
        .auto-style3 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">用户账号：</td>
                    <td>
                        <asp:TextBox ID="tbx_id" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">用户密码：</td>
                    <td>
                        <asp:TextBox ID="tbx_pwd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">用户权限：</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddl_roleid" runat="server" Height="36px" Width="95px">
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加用户权限" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
