<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Managejob.aspx.cs" Inherits="IDP_Project_01.admin.Managejob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="jobid" HeaderText="ID" />
            <asp:BoundField DataField="jobtitle" HeaderText="Title" />
            <asp:BoundField DataField="category" HeaderText="Category of Job" />
            <asp:BoundField DataField="jobdesc" HeaderText="Job Description" />
            <asp:BoundField DataField="salary" HeaderText="Salary" />
            <asp:TemplateField HeaderText="Remove">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/delete.png" Width="40px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
