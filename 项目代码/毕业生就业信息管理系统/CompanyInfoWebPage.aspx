<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyInfoWebPage.aspx.cs" Inherits="毕业生就业信息管理系统.CompanyInfoWebPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 98%;
            height: 475px;
        }
        .auto-style5 {
            width: 137px;
            height: 37px;
            text-align: right;
        }
        .auto-style6 {
            height: 37px;
            width: 156px;
        }
        .auto-style8 {
            height: 36px;
            width: 156px;
        }
        .auto-style10 {
            height: 38px;
            width: 156px;
        }
        .auto-style11 {
            height: 37px;
            text-align: center;
        }
        .auto-style12 {
            width: 157px;
            height: 36px;
            text-align: right;
        }
        .auto-style13 {
            width: 157px;
            height: 38px;
            text-align: right;
        }
        .auto-style14 {
            width: 100%;
            height: 41px;
        }
        .auto-style15 {
            width: 137px;
            height: 36px;
            text-align: right;
        }
        .auto-style16 {
            width: 137px;
            height: 38px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" OnCancelCommand="DataList1_CancelCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand">
                <EditItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style12"><strong>序号：</strong></td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox1" runat="server" Height="24px" Text='<%# Eval("companyid") %>' Width="174px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13"><strong>公司编号：</strong></td>
                            <td class="auto-style10">
                                <asp:Label ID="lb_cid" runat="server" Text='<%# Eval("cid") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><strong>公司名称：</strong></td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Text='<%# Eval("companyname") %>' Width="174px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><strong>公司地址：</strong></td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox3" runat="server" Height="24px" Text='<%# Eval("address") %>' Width="174px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12"><strong>邮政编码：</strong></td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox4" runat="server" Height="24px" Text='<%# Eval("post") %>' Width="174px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11" colspan="2">
                                <asp:Image ID="Image1" runat="server" Height="232px" ImageUrl='<%# Eval("CimageUrl") %>' Width="179px" />
                                <br />
                                <br />
                                <strong>
                                <asp:Button ID="btn_imageupload" runat="server" Height="33px" OnClick="btn_imageupload_Click" Text="上传资质证明" Width="110px" />
                                </strong>&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Height="31px" Width="131px" />
                                <br />
                                <table class="auto-style14">
                                    <tr>
                                        <td>
                                            <asp:Button ID="btn_update" runat="server" CommandName="update" Height="33px" Text="提交" Width="53px" />
                                        </td>
                                        <td><strong>
                                            <asp:Button ID="btn_cancel" runat="server" CommandName="cancel" Height="33px" Text="取消" Width="51px" />
                                            </strong></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style15"><strong>序号：</strong></td>
                            <td class="auto-style8">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("cid") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16"><strong>公司编号：</strong></td>
                            <td class="auto-style10">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("CompanyId") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><strong>公司名称：</strong></td>
                            <td class="auto-style6">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("companyname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16"><strong>公司地址：</strong></td>
                            <td class="auto-style10">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15"><strong>&nbsp; 邮政编码：</strong></td>
                            <td class="auto-style8">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("post") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11" colspan="2">
                                <asp:Image ID="Image1" runat="server" Height="232px" ImageUrl='<%# Eval("CimageUrl") %>' Width="179px" />
                                <br />
                                <br />
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
