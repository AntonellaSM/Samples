<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoEmpleadosBd.aspx.cs" Inherits="PracticasWeb.DemoEmpleadosBd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
       
                <table>
                    <tr>
                        <td colspan="2" style="text-align:center">
                            <h4>Alta de empleado</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtNombre" ControlToValidate="txtNombre" runat="server" ErrorMessage="Nombre Requerido" ForeColor="red" ValidationGroup="ValidGrupoAlta"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtApellido" ControlToValidate="txtApellido" runat="server" ErrorMessage="Apellido Requerido" ForeColor="red" ValidationGroup="ValidGrupoAlta"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                       <tr>
                        <td>
                             <asp:Label ID="lblGenero" runat="server" Text="Genero"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtGenero" runat="server"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtGenero" ControlToValidate="txtGenero" runat="server" ErrorMessage="Genero Requerido" ForeColor="red" ValidationGroup="ValidGrupoAlta"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                   
                    <tr>
                        <td>
                             <asp:Label ID="lblGerencia" runat="server" Text="Gerencia"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtGerencia" runat="server"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtGerencia" ControlToValidate="txtGerencia" runat="server" ErrorMessage="Gerencia Requerida" ForeColor="red" ValidationGroup="ValidGrupoAlta"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtTelefono" ControlToValidate="txtTelefono" runat="server" ErrorMessage="Telefono Requerido" ForeColor="red" ValidationGroup="ValidGrupoAlta"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                       <tr>
                        <td>
                             <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" CausesValidation="True"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email Invalido" ForeColor="Red" ValidationExpression="^[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$" Display="Dynamic" ValidationGroup="ValidGrupoAlta"></asp:RegularExpressionValidator>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email Requerido" ForeColor="red" ValidationGroup="ValidGrupoAlta" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnAlta" runat="server" Font-Bold="true" Text="Alta" OnClick="btnAlta_Click" ValidationGroup="ValidGrupoAlta" />
                        </td>
                    </tr>
                </table>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="IdEmpleado" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:TemplateField ShowHeader="True">

                    <ItemTemplate>
                        <asp:Button ID="btnEliminar" runat="server" CommandName="Delete" Text="Eliminar" OnClientClick="return confirm('Confirma eliminación?');" />
                      
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="IdEmpleado" HeaderText="IdEmpleado" ReadOnly="True" SortExpression="IdEmpleado" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
                <asp:BoundField DataField="Gerencia" HeaderText="Gerencia" SortExpression="Gerencia" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleConnectionString %>" SelectCommand="SELECT * FROM [empleados]">
        </asp:SqlDataSource>
    </form>
</body>
</html>
