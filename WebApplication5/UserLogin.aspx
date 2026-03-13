<%@ Page Title="" Language="C#" MasterPageFile="~/GenralSite1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="WebApplication5.WebForm2" %>
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
                <h2>Student Login</h2>
              <h5><p>Student Login here</p></h5>
            </div> 
			    <form  runat="server">
                        
       
       <%--<asp:Label ID="lblemail" runat="server" Text="Email Id" class="form-control"></asp:Label>--%>
    <asp:TextBox ID="txtboxemail" runat="server" required="required" class="form-control" placeholder="Email"></asp:TextBox>
           <br />         
    <%--<asp:Label ID="lblpwd" runat="server" Text="Password" class="form-control"></asp:Label>--%>
    <asp:TextBox ID="txtboxpwd" runat="server" required="required" class="form-control" placeholder="Password"></asp:TextBox>
                
    <asp:Button ID="btnlogin" runat="server" OnClick ="btnlogin_Click " Text="Login" class="btn btn-primary btn-lg" />
    <asp:Button ID="btnreset" runat="server" OnClick="btnreset_Click" Text="Reset" class="btn btn-primary btn-lg" />
       </form>
        </div>

            </section>
    
</asp:Content>
