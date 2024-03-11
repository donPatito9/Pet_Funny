<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Mascota.Web.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Pet Funny"></asp:Label>
<br />
<br />
<asp:Label ID="lblSaludo" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#33CC33"></asp:Label>
<br />
    <a href="Eliminar.aspx">Eliminar.aspx</a>
<asp:Menu ID="Menu1" runat="server" BackColor="#666666" class="navbar-brand" DataSourceID="smdsMapa" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="White" StaticSubMenuIndent="10px">
    <DynamicHoverStyle BackColor="Gray" ForeColor="White" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <DynamicMenuStyle BackColor="#666666" />
    <DynamicSelectedStyle BackColor="#666666" />
    <StaticHoverStyle BackColor="Gray" ForeColor="White" />
    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <StaticSelectedStyle BackColor="#666666" />
</asp:Menu>
<br />
<br />
<asp:SiteMapDataSource ID="smdsMapa" runat="server" />
<br />
</asp:Content>
