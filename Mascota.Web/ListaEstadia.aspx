<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListaEstadia.aspx.cs" Inherits="Mascota.Web.ListaEstadia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label class="mb-3" ID="Label1" runat="server" Text="Registro de Alojamiento" Font-Bold="True" Font-Size="X-Large"></asp:Label>
<br />
<br />
<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" Text="Registros por Concluir"></asp:Label>
<br />
<br />
<asp:Label ID="Label3" runat="server" Text="Datos Propietario"></asp:Label>
<br />
<asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="EntityDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PetFunnyEntities" DefaultContainerName="PetFunnyEntities" EnableFlattening="False" EntitySetName="Propietario" Select="it.[Nombres], it.[Apellidos], it.[Telefono]">
</asp:EntityDataSource>
<br/>
<asp:Label ID="Label4" runat="server" Text="Datos Mascota"></asp:Label>
<br/>
<asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="EntityDataSource2" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" AllowPaging="True" Width="173px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
    <asp:BoundField DataField="NombreMascota" HeaderText="NombreMascota" ReadOnly="True" SortExpression="NombreMascota" />
    </Columns>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#F7F7DE" />
    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FBFBF2" />
    <SortedAscendingHeaderStyle BackColor="#848384" />
    <SortedDescendingCellStyle BackColor="#EAEAD3" />
    <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>
<asp:GridView ID="GridView3" runat="server" CellPadding="4" DataSourceID="EntityDataSource3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
    <asp:BoundField DataField="IdTipoMascota" HeaderText="IdTipoMascota" ReadOnly="True" SortExpression="IdTipoMascota" />
    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" ReadOnly="True" SortExpression="Descripcion" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=PetFunnyEntities" DefaultContainerName="PetFunnyEntities" EnableFlattening="False" EntitySetName="TipoMascota" Select="it.[IdTipoMascota], it.[Descripcion]" EntityTypeFilter="TipoMascota">
</asp:EntityDataSource>
<asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=PetFunnyEntities" DefaultContainerName="PetFunnyEntities" EnableFlattening="False" EntitySetName="Alojamiento" Select="it.[NombreMascota]">
</asp:EntityDataSource>
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="Volver a Inicio" OnClick="Button1_Click" />
<br />
</asp:Content>
