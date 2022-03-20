<%@ Page Title="" Language="C#" MasterPageFile="~/General_Master.Master" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="IDP_Project_01.user_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblemail" runat="server" Text="Email ID:"></asp:Label>
    <br />
    <asp:TextBox ID="txtusremail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Email Id is required!" ForeColor="Red" ControlToValidate="txtusremail"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblpass" runat="server" Text="Password:"></asp:Label>
    <br />
    <asp:TextBox ID="txtusrpass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Password is required!" ForeColor="Red" ControlToValidate="txtusrpass"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forgotpass.aspx">Forgot password?</asp:HyperLink>
    <br />
    <br />
    <asp:Button ID="btnusrlogin" runat="server" Text="Login" OnClick="btnusrlogin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnusrreset" runat="server" CausesValidation="False" Text="Reset" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
