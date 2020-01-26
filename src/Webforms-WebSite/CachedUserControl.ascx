<%-- 
MIT License Copyright (c) 2020  Javier Cañon | https://www.javiercanon.com
--%>
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CachedUserControl.ascx.cs" Inherits="CachedUserControl" %>
<%@ OutputCache Duration="10" VaryByParam="None" %>

User Control Time: 
<asp:Label ID="lblCurrentTime" runat="server"></asp:Label>