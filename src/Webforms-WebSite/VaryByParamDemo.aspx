<%-- 
MIT License Copyright (c) 2020  Javier Cañon | https://www.javiercanon.com
--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VaryByParamDemo.aspx.cs" Inherits="VaryByParamDemo" %>
<%@ OutputCache Duration="10" VaryByParam="TimeNo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VaryByParam Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1><a href="Default.aspx">Home</a> :: VaryByParam Demo</h1>
        <p>
            This example shows how to vary the output cache based on a querystring parameter value. From this page you can
            choose how many "current times" to see using the drop-down list below. Choosing an item from the drop-down list
            redirects you to this page, passing the number you selected in the querystring field <code>TimeNo</code>.
        </p>
        <p>
            Note that the cache is specific to each page request with a unique <code>TimeNo</code> value, each having a ten second
            duration. Consequently, if you visit <code>VaryByParamDemo.aspx?<b>TimeNo=1</b></code> at 5:00:00 you will see the time (5:00:00)
            listed once. If you then visit <code>VaryByParamDemo.aspx?<b>TimeNo=2</b></code> at 5:00:02 you will see the time listed twice
            (5:00:02, 5:00:02). If you then go back to <code>VaryByParamDemo.aspx?<b>TimeNo=1</b></code>
            at 5:00:05, you will still see cached version of the page when you visited with the same querystring value, namely the time 
            as 5:00:00 (listed once). Likewise, if you return to <code>VaryByParamDemo.aspx?<b>TimeNo=2</b></code> before its duration is 
            met (5:00:12) you will see its cached time, 5:00:02 (listed twice).
        </p>
        <p>
            <h3>The Time Is...</h3>
            <asp:Label ID="lblTimeList" runat="server"></asp:Label>
        </p>
        <p>
            <b>Change the TimeNo value:</b>
            <asp:DropDownList ID="ddlTimeNo" runat="server" AutoPostBack="True" 
                onselectedindexchanged="ddlTimeNo_SelectedIndexChanged">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
        </p>
    </div>
    </form>
</body>
</html>
