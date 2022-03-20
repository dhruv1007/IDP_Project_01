<%@ Page Title="" Language="C#" MasterPageFile="~/General_Master.Master" AutoEventWireup="true" CodeBehind="forgotpass.aspx.cs" Inherits="IDP_Project_01.admin_forgotpass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbltype" runat="server" Text="Please select your role:"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>None</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>HR</asp:ListItem>
        <asp:ListItem>User</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lblh" runat="server" Text="Enter your registered email:"></asp:Label>
    <br />
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="*Email ID is required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="*Invalid Email format!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Button ID="btnrecover" runat="server" Text="Recover" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnreset" runat="server" CausesValidation="False" Text="Reset" />
    <br />
</asp:Content>
