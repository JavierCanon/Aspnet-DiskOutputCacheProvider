<%-- 
MIT License Copyright (c) 2020  Javier Cañon | https://www.javiercanon.com
--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OutputCacheDemo1.aspx.cs" Inherits="OutputCacheDemo1" %>
<%@ OutputCache Duration="10" VaryByParam="None" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Output Cache Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1><a href="Default.aspx">Home</a> :: Simple Output Cache Demo</h1>
        <p>
            This page uses the <code>DiskOutputCacheProvider</code> to cache the output of the content in this
            page for <b>ten seconds</b>. The time below shows the time the data was cached... keep refreshing your browser...
            the time will stay constant until the cache has expired.
        </p>
        <p>
            The time at the beep is... 
            <asp:Label ID="lblCurrentTime" runat="server"></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
