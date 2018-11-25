<%@ Page Language="C#" AutoEventWireup="true" CodeFile="topTitle.aspx.cs" Inherits="indexFrame_top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            .style1 {
                height: 18px;
                width: 700px;
            }

            .style2 {
                height: 18px;
                width: 87px;
            }

            .style3 {
                height: 18px;
                width: 123px;
            }
        </style>
    </head>
    <body style="background-image: url(../image/OA办公自动化系统首页.gif); background-repeat:no-repeat;">


        <form id="form1" runat="server">
            <div style="width: 1598px">
                <table style="height: 20px; width: 998px;" align="center" class="css">
                    <tr>
                        <td align="center" colspan="5" style="height: 37px">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="style1"></td>
                        <td width="129" class="style2">
                            <asp:HyperLink ID="hLinkUser" runat="server" Target="rightFrame" NavigateUrl="../Login/sysLogin.aspx?title=÷职员登录÷" Width="56px" CssClass="css" Font-Bold="True" ForeColor="White"><img src="../image/yd.PNG" width="115" height="34" /></asp:HyperLink></td>
                        <td width="123" class="style3">
                            <asp:HyperLink ID="hLinkSys" runat="server" NavigateUrl="../Login/sysLogin.aspx?title=÷Admin登录÷" Target="rightFrame" CssClass="css" Font-Bold="True" ForeColor="White"><img src="../image/ad.PNG" width="115" height="34" /></asp:HyperLink></td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>