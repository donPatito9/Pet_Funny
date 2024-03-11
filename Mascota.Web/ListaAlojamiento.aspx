<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListaAlojamiento.aspx.cs" Inherits="Mascota.Web.ListaAlojamiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
 <br />
 <asp:Label class="mb-3" ID="Label1" runat="server" Text="Registro de Alojamiento" Font-Bold="True" Font-Size="X-Large"></asp:Label>
 </p>
 <p>
 <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" Text="Resumen de Alojamiento"></asp:Label>
 </p>
 <p>
 <asp:Label ID="Label3" runat="server" Text="Datos Propietario"></asp:Label>
 </p>
 <p>
 <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="EntityDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" Height="331px" Width="667px">
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
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PetFunnyEntities" DefaultContainerName="PetFunnyEntities" EnableFlattening="False" EntitySetName="Propietario" Select="it.[Rut], it.[Nombres], it.[Apellidos], it.[Telefono]">
</asp:EntityDataSource>
 </p>
 <p>
 <asp:Label ID="Label4" runat="server" Text="Datos Mascota"></asp:Label>
 </p>
 <p>
 <asp:GridView ID="GridView2" runat="server" CellPadding="4" DataSourceID="EntityDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" Height="322px" Width="671px">
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
<asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=PetFunnyEntities" DefaultContainerName="PetFunnyEntities" EnableFlattening="False" EntitySetName="Alojamiento" Select="it.[NombreMascota], it.[IdTipoMascota], it.[IdTipoAlojamiento], it.[FechaIngreso], it.[Dias], it.[Rut]">
</asp:EntityDataSource>
 </p>
 <p>
 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Regresar" />
 </p>
</asp:Content>
