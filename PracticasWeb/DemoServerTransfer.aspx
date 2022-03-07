<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoServerTransfer.aspx.cs" Inherits="PracticasWeb.DemoServerTransfer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <h3>WebForm1</h3>
                    </td>
                </tr>
                <tr>
                    <td>Name/Nombre</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Su Nombre es requerido" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                      <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="Su Email es requerido" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email invalido" ValidationExpression="^[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnTransfer" runat="server" Text="Transferir a DemoServerTransfer2.aspx" OnClick="btnTransfer_Click" /> 
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">                        
                        <asp:HyperLink ID="hiperlinkAlBlog" runat="server" Target="_blank" NavigateUrl="https://amirandadesa.blogspot.com/">Ir al Blog amirandadesa</asp:HyperLink>
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
