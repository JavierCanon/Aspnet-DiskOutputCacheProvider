<%@ Application Language="C#" %>

<script runat="server">

    public override string GetOutputCacheProviderName(HttpContext context)
    {
        var requestedFileName = System.IO.Path.GetFileName(context.Request.PhysicalPath);

        if (string.CompareOrdinal(requestedFileName, "OutputCachingDemo2.aspx") == 0)
            // This is a request for a page named OutputCachingDemo2.aspx... use the internal output caching provider
            return "AspNetInternalProvider";
        else
            // Otherwise, use whatever is configured in Web.config
            return base.GetOutputCacheProviderName(context);
    }
       
</script>
