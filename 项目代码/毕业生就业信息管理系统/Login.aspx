<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="毕业生就业信息管理系统.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 68%;
            height: 94px;
        }
        .auto-style2 {
            width: 275px;
            text-align: right;
            font-size: 20pt;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style6 {
            width: 275px;
            text-align: right;
            height: 27px;
            font-size: 20pt;
        }
        .auto-style7 {
            text-align: left;
            height: 27px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            font-size: 20pt;
        }
        .auto-style11 {
            color: #FFFFFF;
        }
        .auto-style12 {
            font-size: 20pt;
            color: #FFFFFF;
        }
        .auto-style13 {
            font-weight: normal;
            color: #FFFFFF;
        }
        .auto-style14 {
            font-size: 56pt;
        }
        .auto-style15 {
            font-size: 56pt;
            color: #FFFFFF;
        }
    </style>
</head>
<body background="/Background/bk1.jpg" style="height: 250px">
    <form id="form1" runat="server">
        <div class="auto-style9">
            <br />
            <br />
            <strong><span class="auto-style15">毕业生就业信息管理系统</span><br class="auto-style14" />
            </strong>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style2">
                        <h4 class="auto-style10"><span class="auto-style11">用户ID</span><span class="auto-style13">：</span></h4>
                    </td>
                    <td class="auto-style3">
                        <h4>
                        <asp:TextBox ID="tbx_id" runat="server" CssClass="auto-style10"></asp:TextBox>
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <h4 class="auto-style12">密码：</h4>
                    </td>
                    <td class="auto-style7">
                        <h4>
                        <asp:TextBox ID="tbx_password" runat="server" TextMode="Password" CssClass="auto-style10"></asp:TextBox>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="auto-style12">修改密码</asp:LinkButton>
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <h4>
                        <asp:Button ID="btn_login" runat="server" Text="登录" OnClick="btn_login_Click" CssClass="auto-style10" />
                        </h4>
                    </td>
                    <td class="auto-style7">
                        <h4><span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </span>
                        <asp:Button ID="btn_reset" runat="server" Text="重置" OnClick="btn_reset_Click" CssClass="auto-style10" />
                        </h4>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
