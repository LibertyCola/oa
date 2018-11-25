<%@ Page Language="C#" AutoEventWireup="true" CodeFile="voteResult.aspx.cs" Inherits="communion_voteResult" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <table style="border-bottom: #009900 1px solid; border-left: #009900 1px solid; border-right: #009900 1px solid; border-top: #009900 1px solid; height: 1px; width: 591px;" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" colspan="3" class="cssTitle" style="height: 32px">
                            <span style="font-size: 14pt"><strong>
                                                              活动投票结果</strong></span></td>
                    </tr>
                    <tr>
                        <td colspan="3" rowspan="2">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                          BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4"
                                          Height="23px" Width="618px" AllowPaging="True" CssClass="css" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <Columns>
                                    <asp:BoundField DataField="voteTitle" HeaderText="标题" />
                                    <asp:BoundField DataField="voteContent" HeaderText="活动描述" />
                                    <asp:BoundField DataField="voteQty" HeaderText="投票数量" />
                                    <asp:CommandField HeaderText="删除活动" ShowDeleteButton="True" />
                                    <asp:CommandField EditText="投票清零" HeaderText="投票清零" ShowEditButton="True" />
                                </Columns>
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                                               NextPageText="下一页" PreviousPageText="上一页" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>