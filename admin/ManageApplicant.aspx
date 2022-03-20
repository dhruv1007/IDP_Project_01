<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="ManageApplicant.aspx.cs" Inherits="IDP_Project_01.admin.ManageApplicant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="appid" HeaderText="ID" />
            <asp:BoundField DataField="appname" HeaderText="Applicant Name" />
            <asp:BoundField DataField="appcontact" HeaderText="Applicant Contact" />
            <asp:BoundField DataField="appemail" HeaderText="Applicant Email" />
            <asp:BoundField DataField="appcity" HeaderText="Applicant City" />
            <asp:TemplateField HeaderText="Remove">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/icons/delete.png" Width="40px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
