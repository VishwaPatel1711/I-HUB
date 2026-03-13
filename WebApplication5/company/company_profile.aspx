<%@ Page Title="" Language="C#" MasterPageFile="~/company/CompanySite1.Master" AutoEventWireup="true" CodeBehind="company_profile.aspx.cs" Inherits="WebApplication5.company.company_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">



        <asp:Label ID="CNlbl" runat="server" Text="Company Name "></asp:Label>
        <br />
        <asp:TextBox ID="CNtxt" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Addlbl" runat="server" Text="Address"></asp:Label>
        <br />
        <asp:TextBox ID="Addtxt" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Clbl" runat="server" Text="City"></asp:Label>
        <br />
        <asp:TextBox ID="Ctxt" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Contactlbl" runat="server" Text="Contact"></asp:Label>
        <br />
        <asp:TextBox ID="Contacttxt" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Elbl" runat="server" Text="Email ID"></asp:Label>
        <br />
        <asp:TextBox ID="Etxt" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Ubtn" runat="server" OnClick="Ubtn_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Rbtn" runat="server" OnClick="Rbtn_Click" Text="Reset" />



    </form>
</asp:Content>
