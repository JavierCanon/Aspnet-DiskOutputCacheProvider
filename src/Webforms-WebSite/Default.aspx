<%-- 
MIT License Copyright (c) 2020  Javier Cañon | https://www.javiercanon.com
--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Extensible Output Caching Demos</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Extensible Output Caching in ASP.NET 4</h1>
        <p>
            These demos show how to take advantage of ASP.NET 4's extensible output caching.
            Specifically, this demo shows how to create and use a custom output caching provider,
            namely one that caches content to disk. Check out these demos!
        </p>
        <ul>
            <li><a href="OutputCacheDemo1.aspx"><b>Simple Output Caching Demo</b></a> -
            Shows a simple output caching demo that uses the <code>DiskOutputCacheProvider</code>.</li>
            <li><a href="DonutCaching.aspx"><b>Donut Caching</b></a> -
            Gives an example of "donut caching," using the <code>DiskOutputCacheProvider</code>.</li>
            <li><a href="FragmentCachingDemo.aspx"><b>Fragment Caching</b></a> -
            Gives an example of "fragment caching," using the <code>DiskOutputCacheProvider</code>.</li>
            <li><a href="VaryByParamDemo.aspx"><b>VaryByParams Demo</b></a> -
            Gives an example of varying the output cache by a querystring value, using the <code>DiskOutputCacheProvider</code>.</li>
            <li><a href="OutputCachingDemo2.aspx"><b>Choosing Which Output Caching Provider To Use on a Per-Request Basis</b></a> -
            Shows how to specify which output caching provider should be used on a per-request basis. Namely, shows how to use the
            internal, memory-based output cache provider when requests are made to a certain page while using the disk-based cache for
            all other pages.</li>
        </ul>
        <p>
            For more information on output caching, be sure to read:
            <a href="http://www.4guysfromrolla.com/articles/121306-1.aspx">Output Caching in ASP.NET</a> and
            <a href="http://www.4guysfromrolla.com/articles/022802-1.aspx">Caching in ASP.NET</a>.
        </p>
        <p>
            Happy Programming!
        </p>
        <blockquote>
            <a href="http://www.4guysfromrolla.com/ScottMitchell.shtml">Scott Mitchell</a><br />
            mitchell@4guysfromrolla.com<br />
            <a href="http://scottonwriting.net/sowblog/">My Blog</a>
        </blockquote>
    </div>
    </form>
</body>
</html>
