<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEditApplications.aspx.cs" Inherits="毕业生就业信息管理系统.AdminEditApplications" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Horizontal" Height="244px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="1163px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="CompanyID" HeaderText="序号"></asp:BoundField>
                    <asp:BoundField DataField="Cid" HeaderText="公司编号"></asp:BoundField>
                    <asp:BoundField DataField="cname" HeaderText="公司名称" />
                    <asp:BoundField DataField="date" HeaderText="时间" />
                    <asp:BoundField DataField="state" HeaderText="审核状态"></asp:BoundField>
                    <asp:CommandField HeaderText="操作" SelectText="详情" ShowSelectButton="True"></asp:CommandField>
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
