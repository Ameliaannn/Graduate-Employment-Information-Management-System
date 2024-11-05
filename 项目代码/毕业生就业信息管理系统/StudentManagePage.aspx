<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentManagePage.aspx.cs" Inherits="毕业生就业信息管理系统.StudentManagePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body background="/Background/bk1.jpg">
    <form id="form1" runat="server">
        <div>
            <strong>
            <asp:TreeView ID="TreeView1" runat="server" ImageSet="BulletedList3" Font-Size="28px" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowExpandCollapse="False" CssClass="auto-style1">
                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                <Nodes>
                    <asp:TreeNode Text="上传就业信息" Value="上传就业信息" NavigateUrl="~/StudentAddPage.aspx" Target="mainFrame"></asp:TreeNode>
                    <asp:TreeNode Text="查找招聘信息" Value="退出系统" NavigateUrl="~/StudentFindJob.aspx" Target="mainFrame"></asp:TreeNode>
                    <asp:TreeNode Text="退出系统" Value="退出系统"></asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
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
