<%@ Page Title="" Language="C#" MasterPageFile="~/GenralSite1.Master" AutoEventWireup="true" CodeBehind="UserSignup.aspx.cs" Inherits="WebApplication5.UserSignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div id="breadcrumb">
	<div class="container">	
		<div class="breadcrumb">							
			<li><a href="index.html">Home</a></li>
			<li>Signup</li>			
		</div>		
	</div>	
</div>

<section id="contact-page">
    <div class="container">
        <div class="center">        
            <h2>Signup</h2>
          <h5><p>Signup here</p></h5>
        </div> 
	
    <form runat="server">
<asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" placeholder="Name" class="form-control"></asp:TextBox>
        <br />
    <asp:TextBox ID="contacttxtbox" runat="server" required="required" ForeColor="Black" class="form-control" placeholder="Contact Number"></asp:TextBox>

    
    <br />
    <asp:TextBox ID="addtxtbox" runat="server" required="required" ForeColor="Black" class="form-control" placeholder="Address"></asp:TextBox>
   
    <br />
    <asp:TextBox ID="citytxtbox" runat="server" required="required" ForeColor="Black" placeholder="City name" class="form-control"></asp:TextBox>
    
    <br />
    <asp:TextBox ID="emailtxtbox" runat="server" required="required" ForeColor="Black" class="form-control" placeholder="Email Id"  ></asp:TextBox>
    
    <br />
    <asp:TextBox ID="pwdtxtbox" runat="server" required="required" ForeColor="Black" placeholder="Password" class="form-control"></asp:TextBox>
    
    <br />
    <asp:TextBox ID="retypetxtbox" runat="server" required="required" ForeColor="Black" class="form-control" placeholder="Retype Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="submitbtn" runat="server" Text="Submit" OnClick="submitbtn_Click" ForeColor="Black" class="btn btn-primary btn-lg" />
    <asp:Button ID="resetbtn" runat="server" Text="Reset" OnClick="resetbtn_Click" ForeColor="Black" class="btn btn-primary btn-lg"/>

</form>
        </div>

    </section>
</asp:Content>
