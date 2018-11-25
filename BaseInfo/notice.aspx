<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notice.aspx.cs" Inherits="BaseInfo_notice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link rel ="stylesheet" type="text/css" href="../CSS/CSS.css" />
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <br />
                <table border="0" style="border-bottom: #00cc00 1px solid; border-left: #00cc00 1px solid; border-right: #00cc00 1px solid; border-top: #00cc00 1px solid; height: 40px; width: 500px;" class="css" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" colspan="3" class="cssTitle" style="height: 30px">
                            <strong>
                                －＝发布公告＝－</strong></td>
                    </tr>
                    <tr>
                        <td style="height: 25px; width: 62px;" align="right">
                            标题：</td>
                        <td colspan="2" style="height: 25px">
                            <asp:TextBox ID="TextBox1" runat="server" Width="418px" CssClass="InputCss"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 62px" align="right">
                            内容：<br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox2" runat="server" Height="145px" TextMode="MultiLine" Width="418px" CssClass="InputCss"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 25px">
                            <asp:Button ID="Button1" runat="server" Text="发　布" OnClick="Button1_Click" CssClass="blueButtonCss" />
                            <asp:Button ID="Button2" runat="server" Text="重　置" CausesValidation="False" OnClick="Button2_Click" CssClass="blueButtonCss" /></td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>