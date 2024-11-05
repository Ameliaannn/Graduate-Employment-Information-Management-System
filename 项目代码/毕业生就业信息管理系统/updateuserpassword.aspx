<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateuserpassword.aspx.cs" Inherits="毕业生就业信息管理系统.updateuserpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            width: 592px;
            text-align: right;
            height: 90px;
        }
        .auto-style15 {
            font-size: 56pt;
            color: #FFFFFF;
        }
        .auto-style14 {
            font-size: 56pt;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style18 {
            width: 592px;
            text-align: right;
            height: 71px;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style19 {
            width: 592px;
            text-align: right;
            height: 75px;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style20 {
            text-align: left;
            height: 75px;
        }
        .auto-style21 {
            text-align: left;
            height: 71px;
        }
        .auto-style22 {
            width: 592px;
            text-align: right;
            height: 77px;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style23 {
            text-align: left;
            height: 77px;
        }
        .auto-style24 {
            text-align: left;
            height: 90px;
        }
    </style>
</head>
<body style="height: 345px" background="/Background/bk1.jpg" >
    <form id="form1" runat="server">
        <div class="auto-style16">
            <div class="auto-style16">
                <br />
                <br />
            <strong><span class="auto-style15">毕业生就业信息管理系统</span><br class="auto-style14" />
            </strong>
            <br />
            <br />
                <br />
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style22">用户ID：</td>
                    <td class="auto-style23">
                        <asp:Label ID="lb_id" runat="server" CssClass="auto-style17"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">新密码：</td>
                    <td class="auto-style21">
                        <asp:TextBox ID="tbx_password" runat="server" TextMode="Password" CssClass="auto-style17"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">确认新密码:</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="tbx_password2" runat="server" TextMode="Password" CssClass="auto-style17"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btn_updatepwd" runat="server" Text="修改密码" OnClick="btn_updatepwd_Click" Height="50px" Width="108px" />
                    </td>
                    <td class="auto-style24">&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_reset" runat="server" Text="重置" OnClick="btn_reset_Click" Height="46px" Width="80px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_return" runat="server" OnClick="btn_return_Click" Text="返回" Height="47px" Width="81px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body></html>
