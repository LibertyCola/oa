﻿using System;
using System.Data;
using System.Web.UI;

public partial class rule_rule : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BaseClass bc = new BaseClass();
            DataSet ds = bc.GetDataSet("select * from [rule]", "rule");
            DataRow[] row = ds.Tables[0].Select();
            foreach (DataRow rs in row) //将检索到的数据逐一,循环添加到Listbox1中
            {
                TextBox1.Text = rs["content"].ToString();
            }
        }
    }
}