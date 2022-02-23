<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoCascadingDropDrownList.aspx.cs" Inherits="PracticasWeb.DemoCascadingDropDrownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Sample of Cascading DropDownList</h1>
            </div>
        <asp:DropDownList ID="ddlContinents" runat="server" DataValueField="ContinentId" DataTextField="ContinentName" Height="50px" Width="255px" AutoPostBack="True" OnSelectedIndexChanged="ddlContinents_SelectedIndexChanged">
       
        </asp:DropDownList>
        <br />
        <br />
       <asp:DropDownList ID="ddlCountries" runat="server" DataValueField="CountryId" DataTextField="CountryName" Height="50px" Width="255px" AutoPostBack="True" OnSelectedIndexChanged="ddlCountries_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:DropDownList ID="ddlCities" runat="server" DataValueField="CityId" DataTextField="CityName" Height="50px" Width="255px">
        </asp:DropDownList>
    </form>
</body>
</html>
