<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddApplication.aspx.cs" Inherits="毕业生就业信息管理系统.AddApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 326px;
        }
        .auto-style2 {
            width: 226px;
        }
        .auto-style3 {
            width: 226px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">序号:</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">公司编号：</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">公司名称：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="274px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">时间：</td>
                <td>
                    <strong>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="285px">
                        <asp:ListItem Value="2023-12-09（周六）13:30-16:00">2023-12-09（周六）8:00-12:00</asp:ListItem>
                        <asp:ListItem>2023-12-10（周日）13:30-16:30</asp:ListItem>
                        <asp:ListItem>2023-12-11（周一）8:00-12:00</asp:ListItem>
                        <asp:ListItem>2023-12-15（周五）13:30-16:30</asp:ListItem>
                        <asp:ListItem>2023-12-16（周六）8:00-12:00</asp:ListItem>
                        <asp:ListItem>2023-12-17（周日）13:30-16:30</asp:ListItem>
                    </asp:DropDownList>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">地点：</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="18px" Width="272px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">审核状态：</td>
                <td>
                        <strong>
                        <asp:Label ID="lb_state" runat="server" Text="未审核"></asp:Label>
                        </strong>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                        <asp:Button ID="btn_upload" runat="server" Text="上传" OnClick="btn_upload_Click" />
                    </td>
            </tr>
        </table>
    </form>
</body>
</html>
