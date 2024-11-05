<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyManagePage.aspx.cs" Inherits="毕业生就业信息管理系统.CompanyManagePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }
    </style>
</head>
<body background="/Background/bk1.jpg">
    <form id="form1" runat="server">
        <div>
            <strong>
            <asp:TreeView ID="TreeView1" runat="server" ImageSet="BulletedList4" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" CssClass="auto-style1" ShowExpandCollapse="False">
                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                <Nodes>
                    <asp:TreeNode Text="企业信息管理" Value="企业信息管理" NavigateUrl="~/CompanyPage.aspx" Target="mainFrame">
                        <asp:TreeNode Text="企业信息认证" Value="企业信息认证" NavigateUrl="~/CompanyInfoWebPage.aspx" Target="mainFrame"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="招聘信息管理" Value="新建节点" NavigateUrl="~/StudentFindJob.aspx" Target="mainFrame">
                        <asp:TreeNode Text="发布招聘帖子" Value="发布招聘帖子" NavigateUrl="~/CompanyAddMessages.aspx" Target="mainFrame"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="校园招聘会申请" Value="校园招聘会申请" Target="mainFrame">
                        <asp:TreeNode Target="mainFrame" Text="申请提交" Value="申请提交" NavigateUrl="~/AddApplication.aspx"></asp:TreeNode>
                        <asp:TreeNode Target="mainFrame" Text="历史申请" Value="历史申请" NavigateUrl="~/ApplicationHistory.aspx"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="退出系统" Value="退出系统"></asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" ForeColor="#5555DD" />
            </asp:TreeView>
            </strong>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
