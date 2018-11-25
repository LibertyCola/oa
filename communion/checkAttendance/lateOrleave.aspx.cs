using System;
using System.Data;
using System.Web.UI;

public partial class checkAttendance_lateOrleave : Page
{
    private static string up;
    private static string down;
    private readonly BaseClass bc = new BaseClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        labSTime.Text = DateTime.Now.ToString("HH:mm:ss"); //注意大小写
        labXTime.Text = DateTime.Now.ToString("HH:mm:ss");
        DataSet ds = bc.GetDataSet("select * from signstate", "signstate");
        DataRow[] row = ds.Tables[0].Select("signstateid=1");
        foreach (DataRow rs in row)
        {
            Label1.Text = "上班时间：" + Convert.ToDateTime(rs["time"]).ToString("HH:mm:ss");
            up = Convert.ToDateTime(rs["time"]).ToString("HH:mm:ss");
        }
        DataRow[] rw = ds.Tables[0].Select("signstateid=2");
        foreach (DataRow rs1 in rw)
        {
            Label2.Text = "下班时间：" + Convert.ToDateTime(rs1["time"]).ToString("HH:mm:ss");
            down = Convert.ToDateTime(rs1["time"]).ToString("HH:mm:ss");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //上班进行考勤设置
        if (DateTime.Compare(Convert.ToDateTime(DateTime.Now.ToString("hh:mm:ss")), Convert.ToDateTime(up)) <= 0)
        {
            bc.ExecSQL("INSERT INTO sign (datetime, employeeName, late, quit) values ('" + DateTime.Now + "','" +
                       Session["loginName"] + "','0','0')");
        }
        else
        {
            bc.ExecSQL("INSERT INTO sign (datetime, employeeName, late, quit) values ('" + DateTime.Now + "','" +
                       Session["loginName"] + "','1','0')");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //下班进行考勤设置
        if (DateTime.Compare(Convert.ToDateTime(DateTime.Now.ToString("hh:mm:ss")), Convert.ToDateTime(down)) >= 0)
        {
            bc.ExecSQL("INSERT INTO sign (datetime, employeeName, late, quit) values ('" + DateTime.Now + "','" +
                       Session["loginName"] + "','0','0')");
        }
        else
        {
            bc.ExecSQL("INSERT INTO sign (datetime, employeeName, late, quit) values ('" + DateTime.Now + "','" +
                       Session["loginName"] + "','0','1')");
        }
    }
}