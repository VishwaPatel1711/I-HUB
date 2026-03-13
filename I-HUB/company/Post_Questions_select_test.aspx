<%@ Page Title="" Language="C#" MasterPageFile="~/company/CompanySite1.Master" AutoEventWireup="true" CodeBehind="Post_Questions_select_test.aspx.cs" Inherits="WebApplication5.company.Post_Questions_select_test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <asp:Label ID="Label1" runat="server" Text="Select Test"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="TId" HeaderText="Test ID" />
                <asp:BoundField DataField="Tname" HeaderText="Test" />
                <asp:TemplateField HeaderText="Post Question">
                    <ItemTemplate>
            
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("TId", "{0}") %>' ImageUrl="~/Icons/question-mark-vector-icon.jpg" Width="40" OnClick="ImageButton1_Click" />
            
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>
