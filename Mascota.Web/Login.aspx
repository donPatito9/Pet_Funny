<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mascota.Web.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Larger" Text="Login"></asp:Label>
<br />
<br />
<asp:Label ID="Label1" runat="server" Text="Usuario" class="form-label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox class="col align-self-center" ID="txtUsuario" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label2" runat="server" Text="Password"  class="form-label"></asp:Label>
&nbsp;&nbsp;&nbsp;
<asp:TextBox class="col align-self-center" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
<br />
<br />
<asp:Label ID="lblMensaje" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#990000"></asp:Label>
<br />
<br />
<asp:Button class="btn btn-primary" ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Height="23px" Width="63px" />
&nbsp;
</asp:Content>
