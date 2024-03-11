<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="Mascota.Web.Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label class="mb-3" ID="Label1" runat="server" Text="Modificar Registro de Alojamiento" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Datos del Propietario" Font-Bold="True" Font-Size="Large"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="RUT (Seleccionar Rut):" class="form-label"></asp:Label>
    <br />
    <asp:DropDownList ID="txtRut" runat="server" DataSourceID="EntityDataSource3" DataTextField="Rut" DataValueField="Rut">
    </asp:DropDownList>
    &nbsp;
<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Listar" />
    <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=PetFunnyEntities" DefaultContainerName="PetFunnyEntities" EnableFlattening="False" EntitySetName="Propietario" Select="it.[Rut]">
    </asp:EntityDataSource>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Nombres:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Apellidos"></asp:Label>
    <br />
    <asp:TextBox ID="txtNombre" runat="server" Width="332px"></asp:TextBox>
&nbsp;&nbsp&nbsp;
    <asp:TextBox ID="txtApellido" runat="server" Width="327px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Telefono de contacto"></asp:Label>
    <br />
    <asp:TextBox ID="txtFono" runat="server" MaxLength="9"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="estado2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#990000"></asp:Label>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Datos del Mascota" Font-Bold="True" Font-Size="Large"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" Text="Nombre:"></asp:Label>
    <asp:TextBox ID="txtNomMasc" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label9" runat="server" Text="Tipo de Mascota:"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlTipoMascota" runat="server" DataSourceID="EntityDataSource1" DataTextField="IdTipoMascota" DataValueField="IdTipoMascota">
    </asp:DropDownList>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PetFunnyEntities" DefaultContainerName="PetFunnyEntities" EnableFlattening="False" EntitySetName="TipoMascota" Select="it.[IdTipoMascota]">
    </asp:EntityDataSource>
    <br />
    <asp:Label ID="Label10" runat="server" Text="Tipo de Alojamiento"></asp:Label>
&nbsp;&nbsp;
    <asp:DropDownList ID="ddlTipoAlojamiento" runat="server" DataSourceID="EntityDataSource2" DataTextField="IdTipoAlojamiento" DataValueField="IdTipoAlojamiento">
    </asp:DropDownList>
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=PetFunnyEntities" DefaultContainerName="PetFunnyEntities" EnableFlattening="False" EntitySetName="TipoAlojamiento" Select="it.[IdTipoAlojamiento]">
    </asp:EntityDataSource>
    <br />
    <br />
    <asp:Label ID="Label11" runat="server" Text="Fecha de Ingreso:"></asp:Label>
    &nbsp;<asp:Label ID="txtFecha" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
    <br />
    <asp:Label ID="Label13" runat="server" Text="Cantidad de Dias:"></asp:Label>
    <asp:TextBox ID="txtDias" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="estado" runat="server" Font-Bold="True" ForeColor="#990000"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Modificar Propietario" />
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Modificar Mascota" />
    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Volver"/>
    <br />
    <br />
    </asp:Content>

