<%@ Page Title="" Language="C#" MasterPageFile="~/GenralSite1.Master" AutoEventWireup="true" CodeBehind="Company_register.aspx.cs" Inherits="WebApplication5.Company_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <form runat="server">

              <div id="breadcrumb">
	<div class="container">	
		<div class="breadcrumb">							
			<li><a href="index.html">Home</a></li>
			<li> Company SignUp</li>			
		</div>		
	</div>	
</div>

<section id="contact-page">
    <div class="container">
        <div class="center">        
            <h2>SignUp</h2>
          <h5><p> Company SignUp here</p></h5>
        </div> 

       
        <asp:TextBox ID="TxtCompany" runat="server" ForeColor="Black" class="form-control" placeholder="Company Name"></asp:TextBox>
        
        <br/>
        <asp:TextBox ID="TxtAdd" runat="server" ForeColor="Black" TextMode="MultiLine" class="form-control" placeholder="Address"></asp:TextBox>
        
        <br/>
        <asp:TextBox ID="txtcity" runat="server" required="required" ForeColor="Black" class="form-control" placeholder="City"></asp:TextBox>
       
        <br/>
        <asp:TextBox ID="txtcontent" runat="server" required="required" ForeColor="Black" class="form-control" placeholder="Contact Number"></asp:TextBox>
        
        <br/>
        <asp:TextBox ID="txtemail" runat="server" required="required" ForeColor="Black" class="form-control" placeholder="Email Id" ></asp:TextBox>
        
        <br/>
        <asp:TextBox ID="pwdtxtbox" runat="server" required="required" ForeColor="Black" class="form-control" placeholder="Password"  ></asp:TextBox>
        
        <br/>
        <asp:TextBox ID="retypetxtbox" runat="server" required="required" ForeColor="Black" class="form-control" placeholder="Retype Password" ></asp:TextBox>
        
        <br/>
        <asp:Button ID="submitbtn" runat="server" Text="Submit"  ForeColor="Black" OnClick="submitbtn_Click" class="btn btn-primary btn-lg"/>
     
        <asp:Button ID="resetbtn" runat="server" Text="Reset" ForeColor="Black" OnClick="resetbtn_Click" class="btn btn-primary btn-lg" />
        <br />
 
     </form> 
        </div>

</section>
    </asp:Content>
