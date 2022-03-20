<%@ Page Title="" Language="C#" MasterPageFile="~/General_Master.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="IDP_Project_01.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblemail" runat="server" Text="Email ID:"></asp:Label>
    <br />
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="* Email ID is required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <asp:Label ID="lblpass" runat="server" Text="Password:"></asp:Label>
    <br />
    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Password is required!" ForeColor="Red" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forgotpass.aspx">forgot password?</asp:HyperLink>
    <br />
    <br />
    <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnreset" runat="server" CausesValidation="False" Text="Reset" />
    <br />
</asp:Content>
