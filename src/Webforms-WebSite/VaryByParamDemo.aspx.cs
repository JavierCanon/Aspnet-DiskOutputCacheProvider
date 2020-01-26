// MIT License Copyright (c) 2020 Javier Cañon | https://www.javiercanon.com
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VaryByParamDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Request.QueryString["TimeNo"]))
            Response.Redirect("VaryByParamDemo.aspx?TimeNo=1");

        var rightNow = DateTime.Now;
        lblTimeList.Text = string.Empty;

        int count = Convert.ToInt32(Request.QueryString["TimeNo"]);
        for (var i = 0; i < count; i++)
        {
            lblTimeList.Text += rightNow.ToString() + "<br />";
        }
    }

    protected void ddlTimeNo_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("VaryByParamDemo.aspx?TimeNo=" + ddlTimeNo.SelectedValue);
    }
}