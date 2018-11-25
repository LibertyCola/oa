<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sendFile.aspx.cs" Inherits="fileManage_sendFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link rel="stylesheet" type="text/css" href="../CSS/CSS.css" />
        <style type="text/css">
            .style1 {
                height: 25px;
                width: 64px;
            }

            .style2 {
                height: 14px;
                width: 64px;
            }

            .style3 {
                height: 21px;
                width: 64px;
            }
        </style>
    </head>
    <body style="background-image: url(../image/rightFrame.gif)">
        <form id="form1" runat="server">
            <div>
                <br />
                <br />
                <br />
                <table style="border-bottom: #009900 1px solid; border-left: #009900 1px solid; border-right: #009900 1px solid; border-top: #009900 1px solid; height: 200px; width: 675px;" class="css" border="0" align ="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" colspan="3" class="cssTitle" style="height: 30px">
                            <strong>
                                文件传送</strong></td>
                    </tr>
                    <tr>
                        <td class="style1">
                            接收人：</td>
                        <td colspan="2" style="height: 25px">
                            <asp:DropDownList ID="ddlName" runat="server" Width="154px" CssClass="InputCss">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td class="style1">
                            文件标题：</td>
                        <td colspan="2" style="height: 25px">
                            <asp:TextBox ID="TextBox1" runat="server" Width="516px" CssClass="InputCss"></asp:TextBox><asp:RequiredFieldValidator
                                                                                                                          ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="**　必填项"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class="style2">
                            文件内容：</td>
                        <td style="height: 14px;" colspan="2">
                            <asp:TextBox ID="TextBox2" runat="server" Height="109px" TextMode="MultiLine" Width="517px" CssClass="InputCss"></asp:TextBox><asp:RequiredFieldValidator
                                                                                                                                                              ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="**　必填项"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class="style3">
                            附件：</td>
                        <td colspan="2" style="height: 21px">
                            <input id="File1" style="width: 589px" type="file" runat="server" class="InputCss" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
                            <asp:Button ID="btnSend" runat="server" Text="发　送" Width="72px" OnClick="btnSend_Click" CssClass="redButtonCss" />
                            <asp:Button ID="Button2" runat="server" CausesValidation="False" Text="重　置" Width="72px" CssClass="redButtonCss" OnClick="Button2_Click" /></td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>