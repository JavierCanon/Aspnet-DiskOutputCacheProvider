// MIT License Copyright (c) 2020 Javier Cañon | https://www.javiercanon.com
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FragmentCachingDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCurrentTime.Text = DateTime.Now.ToString();
    }
}