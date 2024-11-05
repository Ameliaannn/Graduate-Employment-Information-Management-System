<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayMessages.aspx.cs" Inherits="毕业生就业信息管理系统.DisplayMessages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 343px;
        }
        .auto-style10 {
            height: 25px;
            text-align: center;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style11">
            <div class="auto-style13">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lb_search" runat="server" Text="请输入公司名称:"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:Button ID="btn_search" runat="server" Text="搜索" OnClick="btn_search_Click" />
            <br />
            </div>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Horizontal" OnEditCommand="DataList1_EditCommand">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style10">公司编号：<asp:Label ID="lb_companyid" runat="server" Text='<%# Eval("CompanyID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">公司名称：<asp:Label ID="lb_companyname" runat="server" Text='<%# Eval("CompanyName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style12" Height="237px" Text='<%# Eval("Messages") %>' Width="995px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:Button ID="btn_detail" runat="server" CommandName="edit" Text="查看详情" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div class="auto-style13">
            <asp:LinkButton ID="lkbtn_pre" runat="server" CommandArgument="pre" OnClick="lkbtn_Click">上一页</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lkbtn_next" runat="server" CommandArgument="next" OnClick="lkbtn_Click">下一页</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tbx_pagenum" runat="server" Width="44px">1</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_go" runat="server" Text="跳转" OnClick="btn_go_Click" />
                </div>
    </form>
</body>
</html>
