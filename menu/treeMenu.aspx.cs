using System;
using System.Web.UI;

public partial class menu_treeViewMenu : Page
{
    private readonly BaseClass bc = new BaseClass();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (TreeView1.SelectedValue == "注销用户")
        {
            bc.ExecSQL("update sysUser set sign=0 where userName='" + Session["loginName"] + "'");
            Session["loginName"] = "";
            Response.Write("<script language=javascript>parent.location='../index.aspx'</script>");
        }
    }
}