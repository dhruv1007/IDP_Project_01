<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="adminprofile.aspx.cs" Inherits="IDP_Project_01.admin.adminprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Admin Profile"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
    <br />
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="* Required"></asp:RequiredFieldValidator>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="* This name is invalid" ValidationExpression="^[A-Za-z]*[ ]?[A-Za-z]*$"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmail" ErrorMessage="* Required"></asp:RequiredFieldValidator>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmail" ErrorMessage="* Email invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <br />
    <br />
    <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
    <asp:Button ID="btnreset" runat="server" Text="Reset" />
    <br />
    <br />
</asp:Content>
