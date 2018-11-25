<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lateOrleave.aspx.cs" Inherits="checkAttendance_lateOrleave" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link href="../../CSS/CSS.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="refresh" content="5" />
    </head>
    <body style="background-image: url(../../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <br />
                <br />
                <br />
                <table style="border-bottom: #009900 1px solid; border-left: #009900 1px solid; border-right: #009900 1px solid; border-top: #009900 1px solid; height: 1px; width: 339px;" class="css" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" class="cssTitle" colspan="3" style="height: 25px">
                            <asp:Label ID="labTitle" runat="server" Text="上下班考勤" Width="172px" Font-Bold="True"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 25px" bgcolor="#00cc00">
                            <asp:Label ID="Label1" runat="server" Text="Label" Width="179px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="height: 25px; width: 67px;">
                            上班签到：</td>
                        <td style="height: 25px; width: 195px;">
                            <asp:Label ID="labSTime" runat="server" Text="2006-2-6 15:42:48" Width="100px"></asp:Label><%#DateTime
                                                                                                   .
                                                                                                   Now
                                                                                                   .
                                                                                                   ToString
                                                                                                   () %></td>
                        <td style="height: 25px">
                            <asp:Button ID="Button1" runat="server" Text="签　到" Width="58px" OnClick="Button1_Click" CssClass="redButtonCss" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 25px" bgcolor="#00cc00">
                            <asp:Label ID="Label2" runat="server" Text="Label" Width="173px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="height: 31px; width: 67px;">
                            下班签退：</td>
                        <td style="height: 31px; width: 195px;">
                            <asp:Label ID="labXTime" runat="server" Text="2006-2-6 15:42:48" Width="100px"></asp:Label></td>
                        <td style="height: 31px">
                            &nbsp;<asp:Button ID="Button2" runat="server" Text="签　退" Width="58px" OnClick="Button2_Click" CssClass="redButtonCss" /></td>
                    </tr>
                    <tr>
                        <td align="right" colspan="3" style="height: 16px">
                            **请您自觉遵守考勤制度</td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>