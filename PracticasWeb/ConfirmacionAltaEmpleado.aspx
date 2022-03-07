<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmacionAltaEmpleado.aspx.cs" Inherits="PracticasWeb.ConfirmacionAltaEmpleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="color:darkgreen">
            Se ha dado de alta el empleado con éxito.</div>
        <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver" />
    </form>
</body>
</html>
