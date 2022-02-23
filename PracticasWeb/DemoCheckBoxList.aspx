<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoCheckBoxList.aspx.cs" Inherits="PracticasWeb.DemoCheckBoxList" %>

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
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" RepeatDirection="Horizontal">
            <asp:ListItem Value="0">Diploma</asp:ListItem>
            <asp:ListItem Value="1">Graduate</asp:ListItem>
            <asp:ListItem Value="3">Post Graduate</asp:ListItem>
            <asp:ListItem Value="3">Doctrate</asp:ListItem>
        </asp:CheckBoxList>
        <asp:ListBox ID="ListBox1" runat="server" Height="227px" SelectionMode="Multiple" Width="305px"></asp:ListBox>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
