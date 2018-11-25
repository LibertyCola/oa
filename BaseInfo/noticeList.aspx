<%@ Page Language="C#" AutoEventWireup="true" CodeFile="noticeList.aspx.cs" Inherits="BaseInfo_noticeList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
    </head>
    <body class="css" style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <table style="border-bottom: #009900 1px solid; border-left: #009900 1px solid; border-right: #009900 1px solid; border-top: #009900 1px solid; height: 135px; width: 600px;" class="css" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" colspan="3" style="height: 17px">
                            <strong><span style="color: #000099; font-size: 14pt;">所有公告列表</span></strong></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 106px">
                            <asp:DataList ID="DataList1" runat="server" CellPadding="4" OnDeleteCommand="DataList1_DeleteCommand" ForeColor="#333333" Width="600px" >
                                <ItemTemplate>
                                    <table border="0" style="height: 0px; width: 596px;" class="css" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td rowspan="3" style="width: 55px">
                                                <asp:Image ID="Image1" runat="server" Height="87px" Width="87px" ImageUrl="~/image/dong9.gif" /></td>
                                            <td style="height: 26px; width: 690px;">
                                                标题：<%#                                        DataBinder.Eval(Container.DataItem, "noticeTitle") %></td>
                                            <td align="center" style="height: 26px; width: 266px;">
                                                <asp:Button ID="btnDel" runat="server" Text="删　除" CommandName="delete" CssClass="blueButtonCss" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 60px; vertical-align: top;">
                                                <%#                                        DataBinder.Eval(Container.DataItem, "noticeContent") %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 25px; width: 690px;">
                                                时间：<%#                DataBinder.Eval(Container.DataItem, "noticeTime", "{0:yyyy-MM-dd}") %></td>
                                            <td style="height: 25px; width: 266px;">
                                                发布人：<%#                DataBinder.Eval(Container.DataItem, "noticePerson") %></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <AlternatingItemStyle BackColor="White" />
                                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            </asp:DataList></td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>