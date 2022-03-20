<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="ManageHr.aspx.cs" Inherits="IDP_Project_01.admin.ManageHr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="hrid" HeaderText="ID" />
            <asp:BoundField DataField="hrname" HeaderText="Name" />
            <asp:BoundField DataField="hrcontact" HeaderText="Contact" />
            <asp:BoundField DataField="hremail" HeaderText="Email" />
            <asp:TemplateField HeaderText="Remove">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/delete.png" Width="40px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
