using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BaseInfo_updateDept : Page
{
    private readonly BaseClass bc = new BaseClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = bc.GetDataSet("select * from dept", "dept");
        GridView1.DataKeyNames = new string[] { "deptID" };
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            bc.ExecSQL("delete from dept where deptID='" + GridView1.DataKeys[e.RowIndex].Value + "'");
            GridView1.DataSource = bc.GetDataSet("select * from dept", "dept");
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(bc.MessageBox(ex.Message));
        }
    }
}