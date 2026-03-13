<%@ Page Title="" Language="C#" MasterPageFile="~/company/CompanySite1.Master" AutoEventWireup="true" CodeBehind="manage_internships.aspx.cs" Inherits="WebApplication5.company.manage_internships" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Iid" HeaderText="Internship ID" />
            <asp:BoundField DataField="Idt" HeaderText="Internship Date" />
            <asp:BoundField DataField="Cid" HeaderText="Company ID" />
            <asp:BoundField DataField="Utitle" HeaderText="User Title" />
            <asp:BoundField DataField="Ubranch" HeaderText="User Branch" />
            <asp:BoundField DataField="Udetails" HeaderText="User Details" />
            <asp:BoundField DataField="Ufiles" HeaderText="User Files" />
            <asp:BoundField DataField="IS_Stipend" HeaderText="IS-Stipend" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" />
            <asp:BoundField DataField="SAmount" HeaderText="Stipend Amount" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/Icons/Delete.jpg" Width="40px" CommandArgument='<% #Eval("Iid", "{0}") %>' OnClick="ImageButton1_Click"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
