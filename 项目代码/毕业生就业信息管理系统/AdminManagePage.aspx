<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminManagePage.aspx.cs" Inherits="毕业生就业信息管理系统.AdminManagePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            margin-right: 0px;
            color: #FFFFFF;
        }
    </style>
</head>
<body background="/Background/bk1.jpg">
    <form id="form1" runat="server">
        <div>
            <strong>
            <asp:TreeView ID="TreeView1" runat="server" CssClass="auto-style1" Font-Size="21pt" Height="81px" ImageSet="BulletedList4" Width="147px" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowExpandCollapse="False">
                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                <Nodes>
                    <asp:TreeNode Text="就业信息管理" Value="就业信息管理">
                        <asp:TreeNode NavigateUrl="~/DisplayStudent.aspx" Target="mainFrame" Text="查询就业信息" Value="查询就业信息"></asp:TreeNode>
                        <asp:TreeNode Target="mainFrame" Text="编辑就业信息" Value="编辑就业信息" NavigateUrl="~/AdminEditPage.aspx"></asp:TreeNode>
                        <asp:TreeNode Target="mainFrame" Text="导入学生信息" Value="导入学生信息" NavigateUrl="~/AddStudentForm.aspx"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/resycle.aspx" Target="mainFrame" Text="信息回收站" Value="信息回收站"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="招聘信息管理" Value="招聘信息管理">
                        <asp:TreeNode NavigateUrl="~/DisplayMessages.aspx" Target="mainFrame" Text="管理招聘信息" Value="查询招聘信息"></asp:TreeNode>
                        <asp:TreeNode Target="mainFrame" Text="新增招聘信息" Value="管理招聘信息" NavigateUrl="~/AddCompanyMessages.aspx"></asp:TreeNode>
                        <asp:TreeNode Text="招聘会申请处理" Value="招聘会申请处理" NavigateUrl="~/AdminEditApplications.aspx" Target="mainFrame"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="管理用户权限" Value="管理用户权限" NavigateUrl="~/ManageUser.aspx" Target="mainFrame"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/DetailCompanyInfo.aspx" Text="校企合作认证" Value="校企合作认证" Target="mainFrame"></asp:TreeNode>
                    <asp:TreeNode Text="退出系统" Value="退出系统"></asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" ForeColor="#5555DD" />
            </asp:TreeView>
            </strong>
        </div>
    </form>
</body>
</html>
