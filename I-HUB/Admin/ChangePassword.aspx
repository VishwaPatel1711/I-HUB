<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaser.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication5.Admin.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblcpwd" runat="server" Text="Current Password"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtcpwd" runat="server" required="required"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblnpwd" runat="server" Text="New Password"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtnpwd" runat="server" required="required"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblrnpwd" runat="server" Text="Retype New Password"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtrnpwd" runat="server" required="required"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
&nbsp;<asp:Button ID="btnreset" runat="server" OnClick="btnreset_Click" Text="Reset" />
</asp:Content>
