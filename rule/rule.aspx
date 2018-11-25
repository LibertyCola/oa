<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rule.aspx.cs" Inherits="rule_rule" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="css" style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <table style="border-bottom: #009900 1px solid; border-left: #009900 1px solid; border-right: #009900 1px solid; border-top: #009900 1px solid; height: 336px; width: 662px;" border="0" class="css" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" class="cssTitle" colspan="3" style="height: 35px">
                            <strong>
                                公司规章制度</strong></td>
                    </tr>
                    <tr>
                        <td colspan="3" rowspan="2">
                            <asp:TextBox ID="TextBox1" runat="server" Height="430px" TextMode="MultiLine" Width="720px" ReadOnly="True" CssClass="InputCss"></asp:TextBox></td>
                    </tr>
                    <tr>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>