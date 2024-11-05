<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyInformations.aspx.cs" Inherits="毕业生就业信息管理系统.CompanyInformations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 301px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style6 {
            height: 46px;
        }
        .auto-style8 {
            height: 40px;
        }
        .auto-style9 {
            width: 113px;
            height: 39px;
            text-align: right;
        }
        .auto-style10 {
            height: 39px;
        }
        .auto-style14 {
            height: 42px;
        }
        .auto-style15 {
            width: 119px;
            height: 40px;
            text-align: right;
        }
        .auto-style16 {
            width: 119px;
            height: 42px;
            text-align: right;
        }
        .auto-style17 {
            width: 113px;
            height: 40px;
            text-align: right;
        }
        .auto-style18 {
            width: 113px;
            height: 42px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style17"><strong>序号：</strong></td>
                            <td class="auto-style8">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("companyid") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><strong>公司编号：</strong></td>
                            <td class="auto-style10">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("cid") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18"><strong>公司名称：</strong></td>
                            <td class="auto-style14">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("companyname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17"><strong>公司地址：</strong></td>
                            <td class="auto-style8">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18"><strong>邮编：</strong></td>
                            <td class="auto-style14">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("post") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6" colspan="2"><strong>营业资质：</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style3" colspan="2">
                                <asp:Image ID="Image1" runat="server" Height="418px" ImageUrl='<%# Eval("CimageUrl") %>' Width="284px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
