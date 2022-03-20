<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Admin_profile.aspx.cs" Inherits="IDP_Project_01.admin.Admin_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Admin Profile</h2>
    <br />
    <asp:Label ID="lblname" runat="server" Text="Admin Name:"></asp:Label>
    <br />
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="   * Name is required!" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* The name is Invalid! Make sure there is space between first name and last name." ControlToValidate="txtname" ForeColor="Red" ValidationExpression="^[A-za-z]*[ ]?[a-zA-Z]*$"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
    <br />
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Email is required!" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* Email is invalid!" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <br />
    <br />
    <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnreset" runat="server" Text="Reset" />
    <br />
    <br />
    <br />
</asp:Content>
