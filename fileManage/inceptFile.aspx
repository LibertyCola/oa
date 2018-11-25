<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inceptFile.aspx.cs" Inherits="fileManage_inceptFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link rel="stylesheet" type="text/css" href="../CSS/CSS.css" />
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <br />
                <table style="border-bottom: #009900 1px solid; border-left: #009900 1px solid; border-right: #009900 1px solid; border-top: #009900 1px solid; height: 1px; width: 676px;" class="css" align="center" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" class="cssTitle" colspan="3" style="height: 1px">
                            <strong>
                                －＝文件接收＝－</strong></td>
                    </tr>
                    <tr>
                        <td align="right" class="css" colspan="3" style="height: 1px">
                            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" Checked="True"
                                             GroupName="aa" Text="显示未接受" />
                            <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="aa"
                                             Text="显示已接收" />&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" rowspan="2">
                            <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
                                          BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both" OnEditCommand="DataList1_EditCommand" CellSpacing="2" Width="676px">
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <ItemTemplate>
                                    <table border="0" style="height: 1px; width: 660px;" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 25px; width: 63px;" align="right">
                                                文件标题：</td>
                                            <td colspan="2" style="height: 25px" class ="cssTitle" align="left">
                                                <%#                                        DataBinder.Eval(Container.DataItem, "fileTitle") %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="height: 25px; width: 63px;">
                                                来自：</td>
                                            <td style="height: 25px; width: 237px;">
                                                <%#                                        DataBinder.Eval(Container.DataItem, "fileSender") %>
                                            </td>
                                            <td align="right" style="height: 25px">
                                                接收状态：<%#                DataBinder.Eval(Container.DataItem, "examine") %>&nbsp;
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CssClass="blueButtonCss">确认接收</asp:LinkButton></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 66px; width: 63px;" align="right">
                                                文件内容：</td>
                                            <td colspan="2" style="height: 66px; vertical-align: top;">
                                                <%#                DataBinder.Eval(Container.DataItem, "fileContent") %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 25px; width: 63px;" align="right">
                                                附件：</td>
                                            <td style="height: 25px; width: 237px;" align="center">
                                                <%#                DataBinder.Eval(Container.DataItem, "fileName") %> <a href="<%#                DataBinder.Eval(Container.DataItem, "path") %>">下载</a>
                                            </td>
                                            <td style="height: 25px">
                                                时间：<%#                DataBinder.Eval(Container.DataItem, "fileTime", "{0:yyyy-MM-dd}") %></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            </asp:DataList></td>
                    </tr>
                    <tr>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>