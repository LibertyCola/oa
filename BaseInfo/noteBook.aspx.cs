using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BaseInfo_noteBook : Page
{
    private readonly BaseClass bc = new BaseClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loginName"] == null) Server.Transfer("..\\Index.aspx");
        if (!IsPostBack)
        {
            GridView1.DataSource =
                bc.GetDataSet(
                    "select * from note where notePerson ='" + Session["loginName"] + "'order by noteTime desc", "note");
            GridView1.DataKeyNames = new string[] {"ID"};
            GridView1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (
            bc.ExecSQL("INSERT INTO note (title, content, noteTime, notePerson)VALUES('" + TextBox1.Text + "','" +
                       TextBox2.Text + "','" + DateTime.Today + "','" + Session["loginName"] + "')"))
        {
            Response.Write(bc.MessageBox("数据提交成功！"));
            GridView1.DataSource =
                bc.GetDataSet(
                    "select * from note where notePerson ='" + Session["loginName"] + "'order by noteTime desc", "note");
            GridView1.DataKeyNames = new string[] { "ID" };
            GridView1.DataBind();
            TextBox1.Text = TextBox2.Text = "";
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！"));
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        bool bl = bc.ExecSQL("delete from note where ID='" + GridView1.DataKeys[e.RowIndex].Value + "'");
        GridView1.DataSource =
            bc.GetDataSet("select * from note where notePerson ='" + Session["loginName"] + "'order by noteTime desc",
                          "note");
        GridView1.DataBind();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[3].Text = Convert.ToDateTime(e.Row.Cells[3].Text).ToShortDateString();
        }
    }
}