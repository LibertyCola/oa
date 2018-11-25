<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setVote.aspx.cs" Inherits="communion_setVote" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link rel="stylesheet" type="text/css" href="../CSS/CSS.css" />
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <br />
                <br />
                <table style="border-bottom: #009900 1px solid; border-left: #009900 1px solid; border-right: #009900 1px solid; border-top: #009900 1px solid; height: 100px; width: 500px;" class="css" align="center" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" colspan="3" style="height: 25px" class="cssTitle">
                            <strong>
                                －＝设置活动投票信息＝－</strong></td>
                    </tr>
                    <tr>
                        <td style="height: 25px; width: 432px;" align="right">
                            活动标题：</td>
                        <td style="height: 25px; width: 294px;">
                            <asp:TextBox ID="TextBox1" runat="server" Width="335px" CssClass="InputCss"></asp:TextBox></td>
                        <td style="height: 25px; width: 88px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                                        ErrorMessage="**　必填项！" Width="73px"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="height: 49px; width: 432px;" align="right">
                            活动描述：</td>
                        <td style="height: 49px; width: 294px;">
                            <asp:TextBox ID="TextBox2" runat="server" Height="80px" TextMode="MultiLine" Width="335px" CssClass="InputCss"></asp:TextBox></td>
                        <td style="height: 49px; width: 88px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                                        ErrorMessage="**　必填项！" Width="73px"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" rowspan="2" style="height: 26px">
                            <asp:Button ID="btnSave" runat="server" Text="提　交" OnClick="btnSave_Click" CssClass="blueButtonCss" />
                            <asp:Button ID="btnClear" runat="server" CausesValidation="False" Text="重　置" CssClass="blueButtonCss" OnClick="btnClear_Click" /></td>
                    </tr>
                    <tr>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>