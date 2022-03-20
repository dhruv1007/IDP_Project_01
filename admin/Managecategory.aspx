<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Managecategory.aspx.cs" Inherits="IDP_Project_01.admin.Managecategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Categoryid" HeaderText="ID" />
            <asp:BoundField DataField="Categoryname" HeaderText="Name of Category" />
            <asp:TemplateField HeaderText="Remove">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/icons/delete.png" Width="40px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <p>
    </p>
</asp:Content>
