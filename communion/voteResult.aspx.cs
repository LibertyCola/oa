using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class communion_voteResult : Page
{
    private readonly BaseClass bc = new BaseClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = bc.GetDataSet("select * from vote", "vote");
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //清除数据
        bc.ExecSQL("delete  from vote where id='" + GridView1.DataKeys[e.RowIndex].Value + "'");
        GridView1.DataSource = bc.GetDataSet("select * from vote", "vote");
        GridView1.DataBind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        bc.ExecSQL("update vote set voteQty=0 where id='" + GridView1.DataKeys[e.NewEditIndex].Value + "'");
        GridView1.DataSource = bc.GetDataSet("select * from vote", "vote");
        GridView1.DataBind();
    }
}