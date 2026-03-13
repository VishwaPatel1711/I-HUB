<%@ Page Title="" Language="C#" MasterPageFile="~/company/CompanySite1.Master" AutoEventWireup="true" CodeBehind="Post_Internship.aspx.cs" Inherits="WebApplication5.company.Post_Internship" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <asp:Label ID="Tlbl1" runat="server" Text="Title"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Ttbox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Blbl1" runat="server" Text="Branch"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="Bddl1" runat="server" OnSelectedIndexChanged="Bddl1_SelectedIndexChanged">
        <asp:ListItem Value="MC"></asp:ListItem>
        <asp:ListItem Value="CSE"></asp:ListItem>
        <asp:ListItem Value="IT"></asp:ListItem>
        <asp:ListItem Value="Civil"></asp:ListItem>
        <asp:ListItem Value="Electric"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="DLabel1" runat="server" Text="Details"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Dtxtbox1" runat="server" TextMode="MultiLine" OnTextChanged="Dtxtbox1_TextChanged"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="UifLabel1" runat="server" Text="Upload Internship File"></asp:Label>
&nbsp;&nbsp;
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="sLabel1" runat="server" Text="IS_Stipend"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="Yrb1" runat="server" Text="Yes" GroupName="st" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="Nrb1" runat="server" Text="No" GroupName="st" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Amount"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server">0</asp:TextBox>
&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Duration"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="1 Month"></asp:ListItem>
        <asp:ListItem Value="3 Month"></asp:ListItem>
        <asp:ListItem Value="6 Month"></asp:ListItem>
        <asp:ListItem Value="12 Month"></asp:ListItem>
    </asp:DropDownList>
&nbsp;<br />
    <br />
    <asp:Button ID="Bsub" runat="server" OnClick="Bsub_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Brst" runat="server" OnClick="Brst_Click" Text="Reset" />
&nbsp;
        </form>
</asp:Content>
