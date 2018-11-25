<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editEmployee.aspx.cs" Inherits="BaseInfo_editEmployee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link rel="stylesheet" type="text/css" href="../CSS/CSS.css"/>
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <table style="border-bottom: #009900 1px solid; border-left: #009900 1px solid; border-right: #009900 1px solid; border-top: #009900 1px solid; height: 1px; width: 1px;" class="css" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="3" align="center" class="cssTitle">
                            －＝<strong>员工基本信息</strong>＝－</td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 143px; vertical-align: top;">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                          Width="756px" OnRowDeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="15" AllowPaging="True">
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" />
                                    <asp:BoundField HeaderText="姓名" DataField="name" >
                                        <HeaderStyle Width="40px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="性别" DataField="sex" >
                                        <HeaderStyle Width="30px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="学历" DataField="learn" >
                                        <HeaderStyle Width="40px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="职称" DataField="post" >
                                        <HeaderStyle Width="40px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="部门" DataField="dept" >
                                        <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="职务" DataField="job" >
                                        <HeaderStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="联系电话" DataField="tel" >
                                        <HeaderStyle Width="60px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="联系地址" DataField="address" >
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="在职否" DataField="state" >
                                        <HeaderStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:HyperLinkField HeaderText="编辑" Text="编辑" DataNavigateUrlFields="id" DataNavigateUrlFormatString="~/BaseInfo/updateEmployee.aspx?id={0}" />
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                </Columns>
                                <SelectedRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
                                <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <PagerSettings FirstPageText="第一页" LastPageText="最后一页"
                                               NextPageText="下一页" PreviousPageText="上一页" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>