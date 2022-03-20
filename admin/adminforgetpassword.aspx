<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="adminforgetpassword.aspx.cs" Inherits="IDP_Project_01.admin.adminforgetpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label>
    <br />
    <asp:TextBox ID="txtcp" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcp" ErrorMessage="* Required"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
    <br />
    <asp:TextBox ID="txtnp" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnp" ErrorMessage="* Required"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Retype new password"></asp:Label>
    <br />
    <asp:TextBox ID="txtrp" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrp" ErrorMessage="* Required"></asp:RequiredFieldValidator>
    <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnp" ControlToValidate="txtrp" ErrorMessage="* New password and Retype password must be same"></asp:CompareValidator>
    <br />
    <br />
    <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" />
    <asp:Button ID="btnreset" runat="server" Text="Reset" />
</asp:Content>
