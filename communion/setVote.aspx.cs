using System;
using System.Web.UI;

public partial class communion_setVote : Page
{
    private readonly BaseClass bc = new BaseClass();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        bool bl =
            bc.ExecSQL("INSERT INTO vote (voteTitle, voteContent) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text +
                       "')");
        if (bl)
        {
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("网络故障，数据提交失败！"));
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}