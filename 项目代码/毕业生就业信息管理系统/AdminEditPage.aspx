<%@ Page Language="C#"EnableEventValidation = "false" AutoEventWireup="true" CodeBehind="AdminEditPage.aspx.cs" Inherits="毕业生就业信息管理系统.AdminEditPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body background="/Background/bk1.jpg">
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="导出今日就业数据文件" Width="450px" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Horizontal" Height="238px" PageSize="5" Width="1034px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="studentid" HeaderText="学号" />
                    <asp:BoundField DataField="studentname" HeaderText="姓名" />
                    <asp:BoundField DataField="GradYear" HeaderText="毕业年份" />
                    <asp:BoundField DataField="class" HeaderText="班级" />
                    <asp:BoundField DataField="SchoolName" HeaderText="所属学院" />
                    <asp:BoundField DataField="gender" HeaderText="性别" />
                    <asp:BoundField DataField="DestinationName" HeaderText="毕业去向" />
                    <asp:BoundField DataField="phone" HeaderText="联系电话" />
                    <asp:BoundField DataField="Audit" HeaderText="审核结果" />
                    <asp:CommandField HeaderText="操作" SelectText="详情..." ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
