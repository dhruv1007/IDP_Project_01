<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Reset_pass.aspx.cs" Inherits="IDP_Project_01.admin.Reset_pass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Reset Password</h2>
    <br />
    <asp:Label ID="lblcpass" runat="server" Text="Current Password:"></asp:Label>
    <br />
    <asp:TextBox ID="txtcpass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcpass" ErrorMessage="* This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <asp:Label ID="lblnpass" runat="server" Text="New Password:"></asp:Label>
    <br />
    <asp:TextBox ID="txtnpass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnpass" ErrorMessage="* This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <asp:Label ID="lblrpass" runat="server" Text="Re-type Password:"></asp:Label>
    <br />
    <asp:TextBox ID="txtrpass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* This field is required!" ForeColor="Red" ControlToValidate="txtrpass"></asp:RequiredFieldValidator>
    <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnpass" ControlToValidate="txtrpass" ErrorMessage="* Password mismatch with new password!" ForeColor="Red"></asp:CompareValidator>
    <br />
    <br />
    <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnreset" runat="server" Text="Reset" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
