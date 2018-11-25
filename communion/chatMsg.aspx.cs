using System;
using System.Web.UI;

public partial class communion_chatShow : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BaseClass bc = new BaseClass();
        if (Session["loginName"] == string.Empty)
        {
            Response.Write(bc.MessageBox("该用户在线20分钟,没有操作任何动作,即将返回到系统主页!"));
            Response.Redirect("../Index.aspx");
        }
        Response.Write(Application["chatMsg"]);
    }
}