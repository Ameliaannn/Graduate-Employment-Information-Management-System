<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAddPage.aspx.cs" Inherits="毕业生就业信息管理系统.StudentAddPage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 144px;
            text-align: right;
        }
        .auto-style4 {
            height: 24px;
            text-align: center;
        }
        .auto-style5 {
            width: 292px;
        }
        .auto-style6 {
            height: 24px;
            width: 292px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            height: 24px;
            width: 144px;
            text-align: right;
        }
        .auto-style9 {
            width: 144px;
            text-align: right;
            height: 47px;
        }
        .auto-style10 {
            width: 292px;
            height: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;
        <asp:DataList ID="DataList1" runat="server" OnEditCommand="DataList1_EditCommand" CellPadding="4" OnCancelCommand="DataList1_CancelCommand" OnItemDataBound="DataList1_ItemDataBound" OnUpdateCommand="DataList1_UpdateCommand" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <EditItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7" colspan="2">
                            <asp:Image ID="Image1" runat="server" Height="167px" ImageUrl='<%# Eval("StuImageUrl") %>' Width="151px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="btn_imageupload" runat="server" Text="上传照片" OnClick="btn_imageupload_Click" />
                        </td>
                        <td class="auto-style5">
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="18px" Width="183px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">学号：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_studentid" runat="server" Text='<%# Eval("studentid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">姓名：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_studentname" runat="server" Text='<%# Eval("studentname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">性别：</td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="ddl_gender" runat="server">
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">入学年份：</td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="ddl_enteryear" runat="server">
                                <asp:ListItem>2016</asp:ListItem>
                                <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>
                                <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>
                                <asp:ListItem>2021</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">毕业年份：</td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="ddl_gradyear" runat="server">
                                <asp:ListItem>2023</asp:ListItem>
                                <asp:ListItem>2024</asp:ListItem>
                                <asp:ListItem>2025</asp:ListItem>
                                <asp:ListItem>2026</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">班级：</td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="ddl_class" runat="server">
                                <asp:ListItem>1901</asp:ListItem>
                                <asp:ListItem>1902</asp:ListItem>
                                <asp:ListItem>1903</asp:ListItem>
                                <asp:ListItem>1904</asp:ListItem>
                                <asp:ListItem>1905</asp:ListItem>
                                <asp:ListItem>1906</asp:ListItem>
                                <asp:ListItem>1907</asp:ListItem>
                                <asp:ListItem>1908</asp:ListItem>
                                <asp:ListItem>1909</asp:ListItem>
                                <asp:ListItem>1910</asp:ListItem>
                                <asp:ListItem>1911</asp:ListItem>
                                <asp:ListItem>1912</asp:ListItem>
                                <asp:ListItem>1913</asp:ListItem>
                                <asp:ListItem>1914</asp:ListItem>
                                <asp:ListItem>1915</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">所属学院：</td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="ddl_school" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">年龄：</td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="ddl_age" runat="server">
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">出生日期：</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="tbx_birthday" runat="server" Height="17px" Text='<%# Eval("birthday") %>' Width="130px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">毕业去向：</td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="ddl_destination" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">联系电话：</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="tbx_phone" runat="server" Height="17px" Text='<%# Eval("phone") %>' Width="130px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">联系地址：</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="tbx_address" runat="server" Height="17px" Text='<%# Eval("address") %>' Width="130px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">邮编：</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="tbx_postcode" runat="server" Height="17px" Text='<%# Eval("postcode") %>' Width="130px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Email：</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="tbx_email" runat="server" Height="17px" Text='<%# Eval("email") %>' Width="130px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Button ID="btn_upload" runat="server" CommandName="update" Text="上传信息" />
                        </td>
                        <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_cancel" runat="server" CommandName="cancel" Text="取消" />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td colspan="2" class="auto-style7">
                            <asp:Image ID="Image1" runat="server" Height="167px" Width="151px" ImageUrl='<%# Eval("StuImageUrl") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">学号：</td>
                        <td class="auto-style5">
                            <asp:Label ID="label2" runat="server" Text='<%# Eval("studentid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">姓名：</td>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("studentname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">性别：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_gender" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">入学年份：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_enteryear" runat="server" Text='<%# Eval("EnterYear") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">毕业年份：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_gradyear" runat="server" Text='<%# Eval("GradYear") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">班级：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_class" runat="server" Text='<%# Eval("class") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">所属学院：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_school" runat="server" Text='<%# Eval("schoolname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">年龄：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_age" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">出生日期：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_birthday" runat="server" Text='<%# Eval("birthday") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">毕业去向：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_destination" runat="server" Text='<%# Eval("DestinationName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">联系电话：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_phone" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">联系地址：</td>
                        <td class="auto-style5">
                            <asp:Label ID="lb_address" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">邮编：</td>
                        <td class="auto-style6">
                            <asp:Label ID="lb_postcode" runat="server" Text='<%# Eval("postcode") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Email：</td>
                        <td class="auto-style6">
                            <asp:Label ID="lb_email" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" colspan="2">
                            <asp:Button ID="btn_edit" runat="server" CommandName="edit" Text="编辑" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <div>
        </div>
    </form>
</body>
</html>
