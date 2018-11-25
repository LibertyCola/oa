<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fileList.aspx.cs" Inherits="fileManage_fileList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <table style="height: 1px; width: 757px;" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" class="cssTitle" colspan="3" style="height: 27px">
                            <strong>
                                －＝删除文件＝－</strong></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 275px; vertical-align: top;">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                          BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
                                          CellPadding="4" CssClass="css" Height="38px" Width="753px" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging">
                                <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                                               NextPageText="下一页" PreviousPageText="上一页" />
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <Columns>
                                    <asp:BoundField DataField="fileID" HeaderText="ID" />
                                    <asp:BoundField DataField="fileSender" HeaderText="发送人" />
                                    <asp:BoundField DataField="fileAccepter" HeaderText="接收人" />
                                    <asp:BoundField DataField="fileTitle" HeaderText="文件标题" />
                                    <asp:BoundField DataField="fileTime" HeaderText="发送时间" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="False" />
                                    <asp:BoundField DataField="fileContent" HeaderText="文件说明" />
                                    <asp:CommandField DeleteImageUrl="~/icon/del.gif" HeaderText="删除文件" ShowDeleteButton="True" />
                                </Columns>
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>