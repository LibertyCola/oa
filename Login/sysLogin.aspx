<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sysLogin.aspx.cs" Inherits="Login_sysLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link rel="stylesheet" type ="text/css" href="../CSS/CSS.css" />
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table style="border-bottom: #00cc00 1px solid; border-left: #00cc00 1px solid; border-right: #00cc00 1px solid; border-top: #00cc00 1px solid; height: 116px; width: 268px;" align="center" class="css" bgcolor="#ffffff">
                    <tr>
                        <td align="center" colspan="3" style="height: 15px" class="cssTitle">
                            <asp:Label ID="labTitle" runat="server" Text="－＝登录窗口＝－" Width="170px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 62px">
                            <br />
                            <table style="width: 274px">
                                <tr>
                                    <td align="right" style="width: 80px">
                                        用户名称：</td>
                                    <td style="width: 51px">
                                        <asp:TextBox ID="txtName" runat="server" Width="140px" CssClass="InputCss"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 80px">
                                        用户密码：</td>
                                    <td style="width: 51px">
                                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="140px" CssClass="InputCss"></asp:TextBox></td>
                                </tr>
                            </table>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" colspan="3" style="height: 9px">
                            <asp:ImageButton ID="imgBtnLogin" runat="server" ImageUrl="~/image/denglu.GIF" OnClick="imgBtnLogin_Click" /><asp:ImageButton
                                                                                                                                             ID="imgBtnCancel" runat="server" ImageUrl="~/image/quxiao.GIF" OnClick="imgBtnCancel_Click" />
                            &nbsp;</td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>