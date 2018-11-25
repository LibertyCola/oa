<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editRule.aspx.cs" Inherits="rule_editRule" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <table class="css" style="border-bottom: #009900 1px solid; border-left: #009900 1px solid; border-right: #009900 1px solid; border-top: #009900 1px solid; height: 1px; width: 497px;" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" class="cssTitle" colspan="3">
                            <strong>
                                编辑公司规章制度</strong></td>
                    </tr>
                    <tr>
                        <td style="height: 392px" colspan="3">
                            <asp:TextBox ID="TextBox1" runat="server" Height="400px" TextMode="MultiLine" Width="720px" CssClass="InputCss"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 28px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提　交" CssClass="redButtonCss" />
                            <asp:Button ID="Button2" runat="server" Text="重　置" CssClass="redButtonCss" OnClick="Button2_Click" /></td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>