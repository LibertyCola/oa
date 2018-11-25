using System;
using System.Web.UI;

public partial class indexFrame_Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BaseClass bc = new BaseClass();
        DataList1.DataSource = bc.GetDataSet("select * from notice", "notice");
        DataList1.DataBind();
    }
}