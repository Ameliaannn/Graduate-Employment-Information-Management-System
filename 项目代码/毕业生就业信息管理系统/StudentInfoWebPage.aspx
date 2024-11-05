<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentInfoWebPage.aspx.cs" Inherits="毕业生就业信息管理系统.StudentInfoWebPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style3 {
            height: 20px;
            text-align: center;
        }
        .auto-style6 {
            height: 23px;
            width: 122px;
            text-align: right;
        }
        .auto-style7 {
            height: 23px;
            width: 213px;
        }
        .auto-style16 {
            width: 218px;
            text-align: right;
        }
        .auto-style17 {
            height: 24px;
            width: 218px;
            text-align: right;
        }
        .auto-style18 {
            width: 213px;
        }
        .auto-style19 {
            height: 24px;
            width: 213px;
        }
        .auto-style20 {
            text-align: center;
        }
        .auto-style26 {
            width: 122px;
            text-align: right;
        }
        .auto-style27 {
            height: 24px;
            width: 122px;
            text-align: right;
        }
        .auto-style28 {
            width: 122px;
            text-align: right;
            height: 46px;
        }
        .auto-style29 {
            width: 213px;
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="dl_add" runat="server" RepeatColumns="1" RepeatDirection="Horizontal" OnEditCommand="DataList1_EditCommand" OnCancelCommand="DataList1_CancelCommand" OnItemDataBound="DataList1_ItemDataBound" OnUpdateCommand="DataList1_UpdateCommand" OnDeleteCommand="dl_add_DeleteCommand">
            <EditItemTemplate>
                <table>
                    <tr>
                        <td class="auto-style3" colspan="2">&nbsp;
                            <asp:Image ID="Image1" runat="server" Height="160px" ImageUrl='<%# Eval("StuImageUrl") %>' Width="130px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">
                            <asp:Button ID="btn_upload" runat="server" Text="上传图片" OnClick="btn_upload_Click" />
                        </td>
                        <td class="auto-style18">
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="152px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26"><strong>学号：</strong></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("studentid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26"><strong>姓名：</strong></td>
                        <td class="auto-style18">
                            <asp:TextBox ID="tbx_studentname" runat="server" Height="16px" Text='<%# Eval("studentname") %>' Width="135px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26"><strong>性别：</strong></td>
                        <td class="auto-style18">
                            <asp:DropDownList ID="ddl_gender" runat="server">
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6"><strong>入学年份：</strong></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="tbx_EnterYear" runat="server" Height="16px" Text='<%# Eval("EnterYear") %>' Width="135px"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="tbx_EnterYear" ErrorMessage="&quot;2018&quot;" ForeColor="Red" MaximumValue="2022" MinimumValue="1965"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28"><strong>毕业年份：</strong></td>
                        <td class="auto-style29">
                            <asp:TextBox ID="tbx_GradYear" runat="server" Height="16px" Text='<%# Eval("GradYear") %>' Width="135px"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="tbx_GradYear" ErrorMessage="&quot;2020&quot;" ForeColor="Red" MaximumValue="2050" MinimumValue="1965"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27"><strong>班级：</strong></td>
                        <td class="auto-style19">
                            <asp:DropDownList ID="ddl_class" runat="server" SelectedValue='<%# Eval("class") %>'>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                                <asp:ListItem>2001</asp:ListItem>
                                <asp:ListItem>2002</asp:ListItem>
                                <asp:ListItem>2003</asp:ListItem>
                                <asp:ListItem>2004</asp:ListItem>
                                <asp:ListItem>2005</asp:ListItem>
                                <asp:ListItem>2006</asp:ListItem>
                                <asp:ListItem>2007</asp:ListItem>
                                <asp:ListItem>2008</asp:ListItem>
                                <asp:ListItem>2009</asp:ListItem>
                                <asp:ListItem>2010</asp:ListItem>
                                <asp:ListItem>2011</asp:ListItem>
                                <asp:ListItem>2012</asp:ListItem>
                                <asp:ListItem>2013</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26"><strong>所属学院：</strong></td>
                        <td class="auto-style18">
                            <asp:DropDownList ID="ddl_school" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26"><strong>年龄：</strong></td>
                        <td class="auto-style18">
                            <asp:DropDownList ID="ddl_age" runat="server" SelectedValue='<%# Eval("Age") %>'>
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
                        <td class="auto-style6"><strong>出生日期：</strong></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="tbx_birthday" runat="server" Height="17px" Text='<%# Eval("birthday") %>' Width="130px"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbx_birthday" ErrorMessage="&quot;2002-9-30&quot;" ForeColor="Red" Type="Date" MaximumValue="2100-1-1" MinimumValue="1900-1-1"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26"><strong>毕业去向：</strong></td>
                        <td class="auto-style18">
                            <asp:DropDownList ID="ddl_Destination" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26"><strong>联系电话：</strong></td>
                        <td class="auto-style18">
                            <asp:TextBox ID="tbx_phone" runat="server" Height="16px" Text='<%# Eval("phone") %>' Width="135px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26"><strong>联系地址：</strong></td>
                        <td class="auto-style18">
                            <asp:TextBox ID="tbx_address" runat="server" Height="16px" Text='<%# Eval("address") %>' Width="135px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26"><strong>邮编：</strong></td>
                        <td class="auto-style18">
                            <asp:TextBox ID="tbx_postcode" runat="server" Height="16px" Text='<%# Eval("postcode") %>' Width="135px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27"><strong>Email：</strong></td>
                        <td class="auto-style19">
                            <asp:TextBox ID="tbx_email" runat="server" Height="16px" Text='<%# Eval("email") %>' Width="135px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">
                            <asp:Button ID="btn_update" runat="server" Text="更新" CommandName="update" />
                        </td>
                        <td class="auto-style18">
                            <asp:Button ID="btn_cancel" runat="server" Text="取消" CommandName="cancel" />
                            &nbsp;
                            <asp:Button ID="btn_delete" runat="server" CommandName="delete" Text="删除" />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <ItemTemplate>
                &nbsp;<table>
                    <tr>
                        <td class="auto-style3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image1" runat="server" Height="160px" ImageUrl='<%# Eval("StuImageUrl") %>' Width="130px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>学号：</strong></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("studentid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>姓名：</strong></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("studentname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>性别：</strong></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6"><strong>入学年份：</strong></td>
                        <td class="auto-style7">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("EnterYear") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>毕业年份：</strong></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("GradYear") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><strong>班级：</strong></td>
                        <td class="auto-style19">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("class") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>所属学院：</strong></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("schoolname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>年龄：</strong></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><strong>出生日期：</strong></td>
                        <td class="auto-style19"><asp:Label ID="Label9" runat="server" Text='<%# Eval("birthday") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>毕业去向：</strong></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("DestinationName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>联系电话：</strong></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>联系地址：</strong></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>邮编：</strong></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("postcode") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><strong>Email：</strong></td>
                        <td class="auto-style19">
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>&nbsp;审核状态：</strong>&nbsp;</td>
                        <td class="auto-style18">
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("Audit") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20" colspan="2">
                            <asp:Button ID="btn_edit" runat="server" CommandName="edit" Text="编辑" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
