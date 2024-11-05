<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEditAPPState.aspx.cs" Inherits="毕业生就业信息管理系统.AdminEditAPPState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 392px;
        }
        .auto-style3 {
            width: 276px;
            text-align: right;
        }
        .auto-style4 {
            width: 276px;
            text-align: center;
            height: 70px;
        }
        .auto-style5 {
            text-align: center;
            height: 70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" OnCancelCommand="DataList1_CancelCommand" OnUpdateCommand="DataList1_UpdateCommand" Width="544px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3"><strong>序号：</strong></td>
                            <td><strong>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("CompanyID") %>'></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style3"><strong>公司编号：</strong></td>
                            <td><strong>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("cid") %>'></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style3"><strong>公司名称：</strong></td>
                            <td><strong>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("cname") %>'></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style3"><strong>时间：</strong></td>
                            <td><strong>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style3"><strong>地点：</strong></td>
                            <td><strong>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style3"><strong>审核状态：</strong></td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>未审核</asp:ListItem>
                                    <asp:ListItem>审核通过</asp:ListItem>
                                    <asp:ListItem>审核不通过</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><strong>
                                <asp:Button ID="btn_update" runat="server" CommandName="update" Height="25px" Text="保存" Width="99px" />
                                </strong></td>
                            <td class="auto-style5"><strong>
                                <asp:Button ID="btn_cancel" runat="server" CommandName="cancel" Height="28px" Text="取消" Width="109px" />
                                </strong></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
