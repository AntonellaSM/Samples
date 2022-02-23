<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoMultiViewControlandSubmitDataBase.aspx.cs" Inherits="PracticasWeb.DemoMultiViewControlandSubmitDataBase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="ViewPersonalDetails" runat="server">
                <table style="border:1px solid black">
                    <tr>
                        <td colspan="2">
                            <h2 style="font-style:oblique">Step 1: Personal Details</h2>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">First Name</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtFirstName" runat="server" ErrorMessage="* Introduce your name." ForeColor="Red" ValidationGroup="step1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Surname</td>
                        <td>
                            <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtSurname" runat="server" ValidationGroup="step1" ErrorMessage="* Introduce your surname." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                            <asp:DropDownList ID="ddlGender" runat="server" AutoPostBack="True">
                                <asp:ListItem Text="Select Gender" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="step1" ControlToValidate="ddlGender" runat="server"  ErrorMessage="* Select your gender" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:right">
                            <asp:Button ID="btnGoToStep2" ValidationGroup="step1" runat="server" Text="Step 2 >>" OnClick="btnGoToStep2_Click"/>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewContactDetails" runat="server">
            <table style="border:1px solid black">
                <tr>
                    <td colspan="2">
                        <h2 style="font-style:oblique">Step 2: Contact Details</h2>
                    </td>
                </tr>
                <tr>
                    <td>Email Adress</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtEmail" runat="server" ErrorMessage="* Introduce your email" ForeColor="Red"></asp:RequiredFieldValidator>
                      
                    </td>
                </tr>

                <tr>
                    <td>Mobile Number</td>
                    <td>
                       <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtMobileNumber" runat="server" ErrorMessage="* Introduce your Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
                      
                    </td>
               </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnGoToStep1" runat="server" Text="<< Step 1" OnClick="btnGoToStep1_Click" CausesValidation="False" />
                    </td>
                    <td>
                         <asp:Button ID="btnGoToStep3" runat="server" Text="Step 3 >>" OnClick="btnGoToStep3_Click" />
                    </td>
                </tr>
            </table>
           </asp:View>
            <asp:View ID="ViewSummary" runat="server">
            <table>
                <tr>
                    <td colspan="2">
                        <h2 style="font-style:oblique">Step 3: Summary</h2>
                    </td>
                </tr>

                <tr>
                    <td colspan="2"><h3>Personal Details</h3></td>
                </tr>

                <tr>
                    <td>First Name</td>
                    <td>
                        <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                   <td>Surname</td>
                    <td>
                         <asp:Label ID="lblSurname" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:Label ID="lblGender" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <h3>Contact Details</h3>
                    </td>
                </tr>

                <tr>
                    <td>Email Adress</td>
                    <td><asp:Label ID="lblEmail" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>Mobile Number</td>
                    <td>
                        <asp:Label ID="lblMobileNumber" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td style="text-align:left">
                        <asp:Button ID="btnGoToPreviousStep2" runat="server" Text="<< Step 2" OnClick="btnGoToPreviousStep2_Click" />
                    </td>
                    <td style="text-align:right">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" OnClientClick="return confirm('Do you confirm your data?');" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="color:darkcyan">                        
                        <asp:Label ID="lblDataSaved" style="text-align:right" runat="server"></asp:Label>
                    </td>
                </tr>

            </table>
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
