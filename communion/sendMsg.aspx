<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sendMsg.aspx.cs" Inherits="communion_sendMsg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link rel="stylesheet" type="text/css" href="../CSS/CSS.css" />
    </head>
    <body style="background-color: #33cc00">
        <form id="form1" runat="server">
            <div>
                <table style="height: 10px; width: 680px;" class="css" border="0">
                    <tr>
                        <td colspan="2" rowspan="2" style="height: 20px; width: 687px;" class="cssTitle">
                            信息输入：<asp:TextBox ID="TextBox1" runat="server" Width="500px" CssClass="InputCss" OnLoad="TextBox1_Load"></asp:TextBox></td>
                        <td style="height: 20px; width: 66px;" rowspan="2">
                            <asp:Button ID="btnSendMsg" runat="server" OnClick="btnSendMsg_Click" Text="发  送" CssClass="blueButtonCss" /></td>
                    </tr>
                    <tr>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>