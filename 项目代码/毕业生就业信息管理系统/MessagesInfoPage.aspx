<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessagesInfoPage.aspx.cs" Inherits="毕业生就业信息管理系统.MessagesInfoPage" %>

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
        .auto-style2 {
            width: 110px;
            text-align: right;
        }
        .auto-style3 {
            width: 110px;
            text-align: right;
            height: 35px;
        }
        .auto-style4 {
            height: 35px;
        }
        .auto-style5 {
            width: 110px;
            text-align: right;
            height: 38px;
        }
        .auto-style6 {
            height: 38px;
        }
        .auto-style7 {
            width: 110px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" OnCancelCommand="DataList1_CancelCommand" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand">
                <EditItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">序号：</td>
                            <td class="auto-style4">
                                <asp:Label ID="lb_companyid" runat="server" Text='<%# Eval("CompanyID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">公司名称：</td>
                            <td class="auto-style6">
                                <asp:TextBox ID="tbx_companyname" runat="server" Text='<%# Eval("CompanyName") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">招聘信息：</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="147px" Text='<%# Eval("Messages") %>' Width="229px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Button ID="btn_delete" runat="server" CommandName="delete" Text="删除" />
                            </td>
                            <td>
                                <asp:Button ID="btn_update" runat="server" CommandName="update" Text="更新" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btn_cancel" runat="server" CommandName="cancel" Text="取消" />
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">序号：</td>
                            <td class="auto-style4">
                                <asp:Label ID="lb_companyid" runat="server" Text='<%# Eval("CompanyID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">公司名称：</td>
                            <td class="auto-style6">
                                <asp:Label ID="tbx_companyname" runat="server" Text='<%# Eval("CompanyName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">招聘信息：</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="147px" Text='<%# Eval("Messages") %>' Width="229px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Button ID="btn_edit" runat="server" CommandName="edit" Text="编辑" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
