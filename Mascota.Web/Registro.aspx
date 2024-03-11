<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Mascota.Web.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
<br />
<asp:Label class="mb-3" ID="Label1" runat="server" Text="Registro de Alojamiento" Font-Bold="True" Font-Size="X-Large"></asp:Label>
&nbsp; </p>
<p>
<asp:Label ID="Label2" runat="server" Text="Datos del Propietario" Font-Bold="True" Font-Size="Large"></asp:Label>
</p>
<p>
<asp:Label ID="Label3" runat="server" Text="RUT:" class="form-label"></asp:Label>
</p>
<asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
<br />
<br />
<p>
<asp:Label ID="Label4" runat="server" Text="Nombres:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label5" runat="server" Text="Apellidos"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>
<asp:TextBox ID="txtNombre" runat="server" Width="332px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtApellido" runat="server" Width="327px" OnTextChanged="txtApellido_TextChanged"></asp:TextBox>
</p>
<p>
<asp:Label ID="Label6" runat="server" Text="Telefono de contacto"></asp:Label>
</p>
<p>
<asp:TextBox ID="txtFono" runat="server" MaxLength="9"></asp:TextBox>
</p>
<p>
<asp:Label ID="Label7" runat="server" Text="Datos del Mascota" Font-Bold="True" Font-Size="Large"></asp:Label>
</p>
<p>
<asp:Label ID="Label8" runat="server" Text="Nombre:"></asp:Label>
&nbsp;
<asp:TextBox ID="txtNomMasc" runat="server"></asp:TextBox>
</p>
<p>
<asp:Label ID="Label9" runat="server" Text="Tipo de Mascota:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlTipoMascota" runat="server" DataSourceID="EntityDataSource1" DataTextField="IdTipoMascota" DataValueField="IdTipoMascota">
    </asp:DropDownList>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PetFunnyEntities" DefaultContainerName="PetFunnyEntities" EnableFlattening="False" EntitySetName="TipoMascota" Select="it.[IdTipoMascota]">
    </asp:EntityDataSource>
</p>
<p>
    <asp:Label ID="Label10" runat="server" Text="Tipo de Alojamiento"></asp:Label>
    :&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlTipoAlojamiento" runat="server" DataSourceID="EntityDataSource2" DataTextField="IdTipoAlojamiento" DataValueField="IdTipoAlojamiento" AutoPostBack="True">
    </asp:DropDownList>
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=PetFunnyEntities" DefaultContainerName="PetFunnyEntities" EnableFlattening="False" EntitySetName="TipoAlojamiento" Select="it.[IdTipoAlojamiento]">
    </asp:EntityDataSource>
</p>
<p>
<asp:Label ID="Label11" runat="server" Text="Fecha de Ingreso:"></asp:Label>
&nbsp;<asp:Label ID="txtFecha" runat="server"></asp:Label>
</p>
<p>
<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged1" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
</asp:Calendar>
</p>
<p>
<asp:Label ID="Label13" runat="server" Text="Cantidad de Dias:"></asp:Label>
&nbsp;<asp:TextBox ID="txtDias" runat="server"></asp:TextBox>&nbsp;</p>
<p>
<asp:Label ID="estado" runat="server" Font-Bold="True" ForeColor="#990000"></asp:Label>
</p>
<asp:Button ID="Button1" runat="server" Text="Agregar Alojamiento" OnClick="Button1_Click" />
<asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Consultar Alojamiento" />
<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Modificar Alojamiento" />
<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Eliminar Alojamiento" />
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Volver a Inicio" />
<p>
&nbsp;</p>
</asp:Content>
