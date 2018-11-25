using System;
using System.Web.UI;

public partial class checkAttendance_setTime : Page
{
    private readonly BaseClass bc = new BaseClass();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        bool blS = bc.ExecSQL("update signstate set [time]='" + TextBox1.Text + "'where signstateid=1");
        bool blX = bc.ExecSQL("update signstate set [time]='" + TextBox2.Text + "'where signstateid=2");
        if (blS && blX)
        {
            Response.Write(bc.MessageBox("上下班时间设置成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("上下班时间设置失败！"));
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}