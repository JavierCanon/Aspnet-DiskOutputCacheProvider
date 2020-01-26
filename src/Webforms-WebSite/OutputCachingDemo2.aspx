<%-- 
MIT License Copyright (c) 2020  Javier Cañon | https://www.javiercanon.com
--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OutputCachingDemo2.aspx.cs" Inherits="OutputCachingDemo2" %>
<%@ OutputCache Duration="10" VaryByParam="None" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using the Internal Output Caching Behavior</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1><a href="Default.aspx">Home</a> :: Using the Internal Output Caching Demo</h1>
        <p>
            This page uses the internal output cache provider, <code>AspNetInternalProvider</code>, which caches the output
            to memory. You can specify what cache provider to use on a per-request basis by overriding the
            <code>GetOutputCacheProviderName</code> method in <code>Global.asax</code>. Check out <code>Global.asax</code>
            and you will see that I've overridden this method to use the <code>AspNetInternalProvider</code> for
            this specific page (<code>OutputCachingDemo2.aspx</code>) while using the default configured provider
            (the disk-based output cache provider) for all other requests.
        </p>
        <p>
            The time at the beep is... 
            <asp:Label ID="lblCurrentTime" runat="server"></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
