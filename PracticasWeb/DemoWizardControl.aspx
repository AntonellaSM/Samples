<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoWizardControl.aspx.cs" Inherits="PracticasWeb.DemoWizardControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
       
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick">
            <SideBarStyle VerticalAlign="Top" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Paso 1-- Datos Personales">
                    <table style="border:1px solid black">
                        <tr>
                            <td>Nombre</td>
                            <td>
                                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Apellido</td>
                            <td>
                            <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                           </td>
                        </tr>
                        <tr>
                            <td>Genero</td>
                            <td>
                                <asp:DropDownList ID="ddlGenero" runat="server">
                                    <asp:ListItem Value="-1">Seleccionar Genero</asp:ListItem>
                                    <asp:ListItem Value="1">Masculino</asp:ListItem>
                                    <asp:ListItem Value="2">Femenino</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Paso 2-- Datos de Contacto">
                    <table style="border:1px solid black">
                        <tr>
                            <td>Email</td>
                            <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Celular</td>
                            <td>
                                <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Paso 3-- Resumen">
                    <table style="border:1px solid black">
                        <tr>
                            <td colspan="2">
                                <h4>Datos Personales</h4>

                            </td>
                            
                        </tr>
                        <tr>
                            <td>Nombre</td>
                            <td>
                                <asp:Label ID="lblNombre" runat="server" ></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Apellido</td>
                            <td>
                               <asp:Label ID="lblApellido" runat="server" ></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Genero</td>
                            <td>
                                <asp:Label ID="lblGenero" runat="server" ></asp:Label>
                            </td>
                        </tr>
                     
                        <tr>
                            <td colspan="2">
                                <h4>Datos de Contacto</h4>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Email</td>
                            <td>
                                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Celular</td>
                            <td>
                            <asp:Label ID="lblCelular" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>

                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </form>
</body>
</html>
