<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edituser.aspx.cs" Inherits="毕业生就业信息管理系统.Edituser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style3 {
            height: 24px;
            width: 128px;
            text-align: right;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 24px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" OnCancelCommand="DataList1_CancelCommand" OnUpdateCommand="DataList1_UpdateCommand" OnDeleteCommand="DataList1_DeleteCommand">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">用户账号：</td>
                        <td class="auto-style2">
                            <asp:Label ID="lb_id" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">用户密码：</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="tbx_pwd" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" colspan="2">
                            <asp:Button ID="btn_update" runat="server" CommandName="update" Text="修改" />
                            &nbsp;
                            <asp:Button ID="btn_delete" runat="server" CommandName="delete" Text="删除" />
                            &nbsp;
                            <asp:Button ID="btn_cancel" runat="server" CommandName="cancel" Text="取消" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
