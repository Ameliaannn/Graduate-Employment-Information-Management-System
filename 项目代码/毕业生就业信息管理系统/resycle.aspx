<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resycle.aspx.cs" Inherits="毕业生就业信息管理系统.resycle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Horizontal" Height="238px" PageSize="5" Width="1034px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="studentid" HeaderText="学号" />
                    <asp:BoundField DataField="studentname" HeaderText="姓名" />
                    <asp:BoundField DataField="GradYear" HeaderText="毕业年份" />
                    <asp:BoundField DataField="class" HeaderText="班级" />
                    <asp:BoundField DataField="gender" HeaderText="性别" />
                    <asp:BoundField DataField="DestinationID" HeaderText="毕业去向编号" />
                    <asp:BoundField DataField="phone" HeaderText="联系电话" />
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
        </div>
    </form>
</body>
</html>
