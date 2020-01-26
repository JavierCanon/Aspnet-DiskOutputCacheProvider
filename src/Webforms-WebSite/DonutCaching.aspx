<%-- 
MIT License Copyright (c) 2020  Javier Cañon | https://www.javiercanon.com
--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonutCaching.aspx.cs" Inherits="DonutCaching" %>
<%@ OutputCache Duration="10" VaryByParam="None" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donut Caching Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1><a href="Default.aspx">Home</a> :: Donut Caching Demo</h1>
        <p>
            Donut caching is a form of output caching that allows you to specify dynamic regions inside of the output cached page
            using the Substitution control and a bit of server-side code. For more on donut caching, see:
            <a href="http://www.4guysfromrolla.com/articles/121306-1.aspx">Output Caching in ASP.NET</a>.
        </p>
        <p>
            Refresh your browser many times. Note that the time shown here is cached for ten seconds, but the time in the paragraph 
            below is dynamic.
        </p>
        <p>
            Cached Time: <asp:Label ID="lblCurrentTimeCached" runat="server"></asp:Label>
        </p>
        <p>
            Dynamic Time:
            <asp:Substitution ID="subCurrentTime" MethodName="GetTime" runat="server" />
        </p>

    </div>
    </form>
</body>
</html>
