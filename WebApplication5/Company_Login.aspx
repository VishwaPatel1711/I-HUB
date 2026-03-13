<%@ Page Title="" Language="C#" MasterPageFile="~/GenralSite1.Master" AutoEventWireup="true" CodeBehind="Company_Login.aspx.cs" Inherits="WebApplication5.Company_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #form1 {
            height: 234px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
	<div id="breadcrumb">
		<div class="container">	
			<div class="breadcrumb">							
				<li><a href="index.html">Home</a></li>
				<li>Company Login</li>			
			</div>		
		</div>	
	</div>
	
	<section id="contact-page">
        <div class="container">
            <div class="center">        
                <h2>Company Login</h2>
              <h5><p>Company Login here</p></h5>
            </div> 
	
    <form id="form1" runat="server">
       
        <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" placeholder="Email" class="form-control"></asp:TextBox>
        <br />
        <asp:TextBox ID="pwdtxt1" runat="server" ForeColor="Black" placeholder="Password" class="form-control"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="sbtn1" runat="server"  OnClick="sbtn1_Click" Text="Login" ForeColor="Black" class="btn btn-primary btn-lg"  />
       
        <asp:Button ID="rstb1" runat="server"  OnClick="rstb1_Click" Text="Reset" ForeColor="Black" class="btn btn-primary btn-lg" />
            <br />
        <a href="Company_register.aspx">New Company</a>

        </form>
</asp:Content>
