<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setSysName.aspx.cs" Inherits="system_setSysName" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>无标题页</title>
        <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
        <script language="javascript" type="text/javascript">
<!--

            function TABLE1_onclick() {

            }

// -->
</script>
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
                <br />
                <table class="css" style="height: 126px; width: 365px;" align="center" border="1" id="TABLE1" language="javascript" onclick=" return TABLE1_onclick() ">
                    <tr>
                        <td align="center" class="cssTitle" colspan="3" style="height: 25px" bgcolor="#00cc00">
                            <strong>
                                系统操作员设置</strong></td>
                    </tr>
                    <tr>
                        <td style="height: 16px; width: 2334px;" align="right">
                            职员姓名：</td>
                        <td style="height: 16px; width: 374px;">
                            <asp:DropDownList ID="dlEmployee" runat="server" Width="153px" CssClass="InputCss">
                            </asp:DropDownList></td>
                        <td style="width: 204px;" rowspan="2">
                            <asp:ListBox ID="ListBox1" runat="server" Width="109px" CssClass="InputCss" Height="79px"></asp:ListBox></td>
                    </tr>
                    <tr>
                        <td style="width: 2334px" align="right">
                            系统密码：</td>
                        <td style="width: 374px">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="InputCss" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="保存密码" OnClick="Button1_Click" CssClass="greenButtonCss" /></td>
                        <td align="center" style="width: 204px">
                            <asp:Button ID="Button2" runat="server" Text="删除操作员" OnClick="Button2_Click" CssClass="greenButtonCss" /></td>
                    </tr>
                </table>
                <br />
    
            </div>
        </form>
    </body>
</html>