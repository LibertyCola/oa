<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vote.aspx.cs" Inherits="communion_vote" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <br />
                <table style="border-bottom: #009900 1px solid; border-left: #009900 1px solid; border-right: #009900 1px solid; border-top: #009900 1px solid; height: 268px; width: 570px;" class="css" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="height: 25px" align="center">
                            <span style="color: #000099; font-size: 14pt;"><strong>活动投票</strong></span></td>
                    </tr>
                    <tr>
                        <td style="height: 310px">
                            <asp:DataList ID="DataList1" runat="server" Width="593px" OnItemCommand="DataList1_ItemCommand" CellPadding="4" ForeColor="#333333">
                                <ItemTemplate>
                                    <table border="1" style="height: 60px; width: 595px;">
                                        <tr>
                                            <td style="height: 5px; width: 97px;">
                                                活动：</td>
                                            <td style="height: 5px; width: 413px;" align="center">
                                                <%#DataBinder
                                                                                                   .
                                                                                                   Eval
                                                                                                   (Container
                                                                                                        .
                                                                                                        DataItem,
                                                                                                    "voteTitle") %>
                                            </td>
                                            <td style="height: 5px">
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="select">投　票</asp:LinkButton></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px">
                                                活动描述：</td>
                                            <td colspan="2">
                                                <%#                DataBinder.Eval(Container.DataItem, "voteContent") %></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <AlternatingItemStyle BackColor="White" />
                                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            </asp:DataList></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
    
            </div>

        </form>
    </body>
</html>