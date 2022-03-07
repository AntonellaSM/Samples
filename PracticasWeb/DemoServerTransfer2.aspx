<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoServerTransfer2.aspx.cs" Inherits="PracticasWeb.DemoServerTransfer2" %>

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
                        <h3>Web Form 2</h3>
                    </td>
                </tr>
                <tr>
                    <td>Name/Nombre</td>
                    <td>
                        <asp:Label ID="lblName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                     <td>
                         <asp:Label ID="lblEmail" runat="server"></asp:Label>
                     </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
