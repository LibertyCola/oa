using System;
using System.Web.UI;

public partial class communion_person : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BaseClass bc = new BaseClass();
        ListBox1.DataSource = bc.GetDataSet("select * from sysUser where sign=1", "sysUser");
        ListBox1.DataTextField = "userName";
        ListBox1.DataValueField = "userName";
        ListBox1.DataBind();
    }
}