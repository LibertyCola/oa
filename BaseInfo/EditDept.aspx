<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditDept.aspx.cs" Inherits="BaseInfo_updateDept" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link rel="stylesheet" type ="text/css" href="../CSS/CSS.css"/>
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <br />
                <br />
                <br />
                <table style="border-bottom: #009900 1px solid; border-left: #009900 1px solid; border-right: #009900 1px solid; border-top: #009900 1px solid; height: 1px; width: 586px;" align="center" class="css" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" colspan="3" style="height: 15px" class="cssTitle">
                            －＝<strong>编辑部门信息</strong>＝－</td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 75px" align="left">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                          CellPadding="3" Font-Size="Small"
                                          Width="610px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="deptID" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" >
                                <PagerSettings FirstPageText="第一页" LastPageText="最后一页"
                                               NextPageText="下一页" PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <Columns>
                                    <asp:BoundField DataField="deptName" HeaderText="部门名称" >
                                        <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="memo" HeaderText="部门描述" >
                                        <HeaderStyle Width="200px" />
                                    </asp:BoundField>
                                    <asp:HyperLinkField HeaderText="编辑部门" Text="编辑" DataNavigateUrlFields="deptID" DataNavigateUrlFormatString="updateDept.aspx?id={0}" >
                                        <HeaderStyle Width="60px" />
                                    </asp:HyperLinkField>
                                    <asp:CommandField HeaderText="删除部门" ShowDeleteButton="True">
                                        <ItemStyle Font-Size="Small" />
                                        <HeaderStyle Width="60px" />
                                    </asp:CommandField>
                                </Columns>
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>