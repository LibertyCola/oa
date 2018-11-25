<%@ Page Language="C#" AutoEventWireup="true" CodeFile="righyNotice.aspx.cs" Inherits="indexFrame_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link rel="stylesheet" type ="text/css" href="../CSS/CSS.css" />
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server" >
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF"
                          BorderStyle="None" BorderWidth="0px" CellPadding="3" GridLines="Horizontal" align="center" ForeColor="White">
                <FooterStyle BackColor="Fuchsia" ForeColor="#4A3C8C" />
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#8FBA33" />
                <ItemTemplate>
                    <table border="1" cellpadding="1" cellspacing="1" bordercolor="#ffffff" class="css" style="background-color: #b1c7fc; color: white; height: 80px; width: 670px;">
                        <tr>
                            <td rowspan="3" style="background-color: #8FBA33; width: 93px;" align="center">
                                <asp:Image ID="Image1" runat="server" Height="76px" Width="56px" ImageUrl="~/image/dong11.gif" /></td>
                            <td colspan="2" align="center" bgcolor="#8fba33" style="color: #0000cc; font-size: 10pt; height: 18px;">
                                公告标题：<%#                                        DataBinder.Eval(Container.DataItem, "noticeTitle") %></td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="#ffffff" style="color: #6600cc; height: 22px;">
                                公告内容：<br /> 
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<%#                                        DataBinder.Eval(Container.DataItem, "noticeContent") %>
                            
                            </td>
                        </tr>
                        <tr>
                            <td align="right" bgcolor="#ffffff" style="color: #6600cc; width: 475px;">
                                公告日期：<%#                DataBinder.Eval(Container.DataItem, "noticeTime", "{0:yyyy-MM-dd}") %></td>
                            <td align="center" bgcolor="#ffffff" style="color: #6600cc; width: 475px;">
                                发布公告人：<%#                DataBinder.Eval(Container.DataItem, "noticePerson") %></td>
                        </tr>
                    </table>
                </ItemTemplate>
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            </asp:DataList>
        </form>
    </body>
</html>