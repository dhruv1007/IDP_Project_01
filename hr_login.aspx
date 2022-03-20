<%@ Page Title="" Language="C#" MasterPageFile="~/General_Master.Master" AutoEventWireup="true" CodeBehind="hr_login.aspx.cs" Inherits="IDP_Project_01.hr_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblemail" runat="server" Text="Email ID:"></asp:Label>
    <br />
    <asp:TextBox ID="txthremail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txthremail" ErrorMessage="* Email ID is required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblpass" runat="server" Text="Password:"></asp:Label>
    <br />
    <asp:TextBox ID="txthrpass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txthrpass" ErrorMessage="* Password is required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forgotpass.aspx">Forgot Password?</asp:HyperLink>
    <br />
    <br />
    <asp:Button ID="btnhrlogin" runat="server" Text="Login" OnClick="btnhrlogin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnreset" runat="server" CausesValidation="False" Text="Reset" />
    <br />
    <br />
</asp:Content>
