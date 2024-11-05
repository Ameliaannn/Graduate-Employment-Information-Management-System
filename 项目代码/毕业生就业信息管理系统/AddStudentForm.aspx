<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudentForm.aspx.cs" Inherits="毕业生就业信息管理系统.AddStudentForm" %>

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
        .auto-style16 {
            width: 197px;
            text-align: right;
        }
        .auto-style18 {
            width: 213px;
        }
        .auto-style6 {
            height: 23px;
            width: 197px;
            text-align: right;
        }
        .auto-style7 {
            height: 23px;
            width: 213px;
        }
        .auto-style17 {
            height: 24px;
            width: 197px;
            text-align: right;
        }
        .auto-style19 {
            height: 24px;
            width: 213px;
        }
        .auto-style20 {
            text-align: left;
        }
        .auto-style21 {
            width: 197px;
            text-align: right;
            height: 27px;
        }
        .auto-style22 {
            width: 213px;
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;
            <table>
                <tr>
                    <td class="auto-style3" colspan="2">请输入学生信息：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>学号：</strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="tbx_studentid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>姓名：</strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="tbx_studentname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>性别：</strong></td>
                    <td class="auto-style18">
                        <asp:DropDownList ID="ddl_genderid" runat="server">
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                        </asp:DropDownList>
&nbsp;
                        <asp:DropDownList ID="ddl_gender" runat="server" AutoPostBack="True">
                            <asp:ListItem>男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>入学年份：</strong></td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddl_enteryear" runat="server">
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2022</asp:ListItem>
                            <asp:ListItem>2023</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>毕业年份：</strong></td>
                    <td class="auto-style18">
                        <asp:DropDownList ID="ddl_gradeyear" runat="server">
                            <asp:ListItem>2024</asp:ListItem>
                            <asp:ListItem>2025</asp:ListItem>
                            <asp:ListItem>2026</asp:ListItem>
                            <asp:ListItem>2027</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong>班级：</strong></td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="ddl_class" runat="server" SelectedValue='<%# Eval("class") %>'>
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
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>所属学院：</strong></td>
                    <td class="auto-style18">&nbsp;<asp:DropDownList ID="ddl_Schoolid" runat="server">
                        <asp:ListItem>001</asp:ListItem>
                        <asp:ListItem>002</asp:ListItem>
                        <asp:ListItem>003</asp:ListItem>
                        <asp:ListItem>004</asp:ListItem>
                        <asp:ListItem>005</asp:ListItem>
                        <asp:ListItem>006</asp:ListItem>
                        </asp:DropDownList>
&nbsp;
                        <asp:DropDownList ID="ddl_schoolname" runat="server">
                            <asp:ListItem>英语学院</asp:ListItem>
                            <asp:ListItem>软件学院</asp:ListItem>
                            <asp:ListItem>韩国语学院</asp:ListItem>
                            <asp:ListItem>日语学院</asp:ListItem>
                            <asp:ListItem>商学院</asp:ListItem>
                            <asp:ListItem>汉学院</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>年龄：</strong></td>
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
                    <td class="auto-style17"><strong>出生日期：</strong></td>
                    <td class="auto-style19">
                        <asp:TextBox ID="tbx_birthday" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21"><strong>毕业去向：</strong></td>
                    <td class="auto-style22">&nbsp;<asp:DropDownList ID="ddl_Destinationid" runat="server">
                        <asp:ListItem>001</asp:ListItem>
                        <asp:ListItem>002</asp:ListItem>
                        <asp:ListItem>003</asp:ListItem>
                        <asp:ListItem>004</asp:ListItem>
                        <asp:ListItem>005</asp:ListItem>
                        <asp:ListItem>006</asp:ListItem>
                        </asp:DropDownList>
&nbsp;
                        <asp:DropDownList ID="ddl_Destinationname" runat="server">
                            <asp:ListItem>省内就业</asp:ListItem>
                            <asp:ListItem>省外就业</asp:ListItem>
                            <asp:ListItem>国外升学</asp:ListItem>
                            <asp:ListItem>国内升学</asp:ListItem>
                            <asp:ListItem>国外就业</asp:ListItem>
                            <asp:ListItem>在家待业</asp:ListItem>
                            <asp:ListItem>自由职业</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>联系电话：</strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="tbx_phone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>联系地址：</strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="tbx_address" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong>邮编：</strong></td>
                    <td class="auto-style19">
                        <asp:TextBox ID="tbx_postcode" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong>Email：</strong></td>
                    <td class="auto-style19">
                        <asp:TextBox ID="tbx_email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>&nbsp;审核状态：</strong></td>
                    <td class="auto-style18">
                        <asp:DropDownList ID="tbx_audit" runat="server">
                            <asp:ListItem>审核通过</asp:ListItem>
                            <asp:ListItem>审核不通过</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_add" runat="server" Text="新增" OnClick="btn_add_Click" Width="138px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
