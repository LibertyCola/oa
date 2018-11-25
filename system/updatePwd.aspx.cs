using System;
using System.Web.UI;

public partial class system_updatePwd : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["loginName"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        BaseClass bc = new BaseClass();
        bool bl =
            bc.ExecSQL("update sysUser set userPwd='" + TextBox1.Text + "' where userName='" + Session["loginName"] +
                       "'");
        if (bl)
        {
            Response.Write(bc.MessageBox("设置新密码成功！"));
        }
    }
}