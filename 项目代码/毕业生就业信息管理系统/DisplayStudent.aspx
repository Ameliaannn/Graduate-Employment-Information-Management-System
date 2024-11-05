<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayStudent.aspx.cs" Inherits="毕业生就业信息管理系统.DisplayStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 12px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style8 {
            text-align: left;
            height: 24px;
        }
        .auto-style9 {
            width: 158px;
        }
        .auto-style10 {
            width: 66px;
        }
        .auto-style17 {
            height: 24px;
            width: 139px;
            text-align: right;
        }
        .auto-style18 {
            width: 139px;
            text-align: right;
        }
        .auto-style19 {
            height: 24px;
            width: 111px;
            text-align: right;
        }
        .auto-style20 {
            width: 111px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8" colspan="4">请输入学生姓名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox ID="tbx_searchSname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_Search" runat="server" Text="搜索" OnClick="btn_Search_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="4">
                    <asp:DataList ID="dl_Student" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="633px">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style3" colspan="2">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="160px" Width="130px" ImageUrl='<%# Eval("StuImageUrl") %>' CommandArgument='<%# Eval("studentid") %>' OnClick="ImageButton1_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">姓名：</td>
                                    <td class="auto-style4">
                                        <asp:Label ID="lbl_studentname" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">入学年份：</td>
                                    <td class="auto-style4">
                                        <asp:Label ID="lbl_enteryear" runat="server" Text='<%# Eval("EnterYear") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">所属学院：</td>
                                    <td>
                                        <asp:Label ID="lbl_school" runat="server" Text='<%# Eval("SchoolName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">毕业去向：</td>
                                    <td>
                                        <asp:Label ID="lbl_destination" runat="server" Text='<%# Eval("DestinationName") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:LinkButton ID="lbtn_pre" runat="server" OnClick="lbtn_Click" CommandArgument="pre">上一页</asp:LinkButton>
                </td>
                <td class="auto-style9">
                    <asp:LinkButton ID="lbtn_next" runat="server" OnClick="lbtn_Click" CommandArgument="next">下一页</asp:LinkButton>
                </td>
                <td>
                    <asp:TextBox ID="tbx_pagenum" runat="server" Width="44px">1</asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="btn_go" runat="server" Text="跳转" OnClick="btn_go_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
