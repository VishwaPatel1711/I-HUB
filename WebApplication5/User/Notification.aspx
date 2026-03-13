<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.Master" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="WebApplication5.User.Notification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" Height="225px">
            <Columns>
                <asp:BoundField DataField="Nid" HeaderText="Notification ID" />
                <asp:BoundField DataField="Ndt" HeaderText="Notification Date" />
                <asp:BoundField DataField="Ndtls" HeaderText="Notification Details" />
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="~/Icons/Delete.jpg" OnClick="ImageButton2_Click" Width="40px" CommandArgument='<%#Eval("Nid","{0}") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>
