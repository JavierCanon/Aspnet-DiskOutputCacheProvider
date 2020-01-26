<%-- 
MIT License Copyright (c) 2020  Javier Cañon | https://www.javiercanon.com
--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FragmentCachingDemo.aspx.cs" Inherits="FragmentCachingDemo" %>

<%@ Register src="CachedUserControl.ascx" tagname="CachedUserControl" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fragment Caching Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1><a href="Default.aspx">Home</a> :: Fragment Caching Demo</h1>
        <p>
            This demo shows how to use fragment caching, which leaves the page dynamic, but output caches the contents of a User Control.
        </p>
        <p>
            This time is rendered in the dynamic page, and will be updated each time you refresh your browser.
        </p>
        <p>
            Page Time: 
            <asp:Label ID="lblCurrentTime" runat="server"></asp:Label>
        </p>
        <p>
            The time below is rendered by a User Control that uses output caching to cache its output for 10 seconds.
            This time will remain cached as you refresh your browser.
        </p>
        <p>
            <uc1:CachedUserControl ID="CachedUserControl1" runat="server" />
        </p>
    </div>
    </form>
</body>
</html>
