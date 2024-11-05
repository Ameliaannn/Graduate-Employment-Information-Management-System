<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyAddMessages.aspx.cs" Inherits="毕业生就业信息管理系统.CompanyAddMessages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 245px;
        }
        .auto-style3 {
            width: 248px;
            text-align: right;
            height: 35px;
        }
        .auto-style4 {
            height: 35px;
        }
        .auto-style5 {
            width: 248px;
            text-align: right;
            height: 38px;
        }
        .auto-style6 {
            height: 38px;
        }
        .auto-style7 {
            width: 248px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">序号：</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">公司名称：</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="tbx_companyname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">招聘信息：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="147px" Width="229px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_upload" runat="server" Text="上传" OnClick="btn_upload_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
