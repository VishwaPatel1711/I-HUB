<%@ Page Title="" Language="C#" MasterPageFile="~/GenralSite1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication5.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
	<div id="breadcrumb">
		<div class="container">	
			<div class="breadcrumb">							
				<li><a href="index.html">Home</a></li>
				<li>Login</li>			
			</div>		
		</div>	
	</div>
	
	<section id="contact-page">
        <div class="container">
            <div class="center">        
                <h2>ADMIN Login</h2>
              <h5><p>Admin Login here</p></h5>
            </div> 
			    <form  runat="server">
                        
    
        <asp:Label ID="lblAdminLogin" runat="server" Text="Admin Login" ></asp:Label>
           <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" placeholder="Email" class="form-control"></asp:TextBox>
        <br />

        <asp:TextBox ID="txtboxpwd" runat="server" required="required" class="form-control" placeholder="Password"></asp:TextBox>
    
        <asp:Button ID="btnLogin" runat="server" Text="LogIn" OnClick="btnLogin_Click" class="btn btn-primary btn-lg"  />
<asp:Button ID="btnreset" runat="server" OnClick="btnreset_Click" Text="Reset" class="btn btn-primary btn-lg" />
       </form>
                    </div>
        
       </section>
    
</asp:Content>
