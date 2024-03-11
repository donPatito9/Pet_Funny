<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="Mascota.Web.Eliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Label class="mb-3" ID="Label1" runat="server" Text="Eliminar Registro" Font-Bold="True" Font-Size="X-Large"></asp:Label>
<br/>
<asp:Label ID="Label2" runat="server" Text="Datos del Propietario" Font-Bold="True" Font-Size="Large"></asp:Label>
<br/>
<br/>
<asp:Label ID="Label3" runat="server" Text="RUT(Seleccione Rut que desea eliminar:"class="form-label"></asp:Label>
<br />
<br />
<asp:DropDownList ID="txtRut" runat="server" DataSourceID="EntityDataSource1" DataTextField="Rut" DataValueField="Rut">
</asp:DropDownList>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PetFunnyEntities" DefaultContainerName="PetFunnyEntities" EnableFlattening="False" EntitySetName="Alojamiento" Select="it.[Rut]">
</asp:EntityDataSource>
<br/>
<asp:Label ID="estado" runat="server"></asp:Label>
<br/>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Eliminar Alojamiento"/>
<asp:Button ID="Button2" runat="server" Text="Regresar"/>
<br/>
</asp:Content>
