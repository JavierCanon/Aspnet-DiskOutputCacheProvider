// MIT License Copyright (c) 2020 Javier Cañon | https://www.javiercanon.com
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonutCaching : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCurrentTimeCached.Text = DateTime.Now.ToString();
    }

    private static string GetTime(HttpContext context)
    {
        return DateTime.Now.ToString();
    }
}