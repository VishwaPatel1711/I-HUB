<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication5.User.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title"> <i class="fa fa-users"></i>  Create  Users</h4><hr>
                                </div>
                                <div class="card-body">
                                    <form runat="server">
                                        <div class="row">
                                            <div class="col-md-6 pr-1">
                                                <div class="form-group">
                                                    
                                                    
                                                   
            
                                     <asp:Label ID="nlbl" runat="server" Text="Name"></asp:Label>
                                      <asp:TextBox ID="ntxtbox" runat="server" class="form-control" required="required"></asp:TextBox>
                                    </div>
                                    </div>
                                            </div>

   
    
    <div class="col-md-6 pr-1">
    <div class="form-group">
                                                    
    <asp:Label ID="cnlbl" runat="server" Text="Contact No"></asp:Label>
    <asp:TextBox ID="cntxtbox" runat="server" class="form-control" required="required"></asp:TextBox>
    </div>
    </div>
    <br />
    
    
     <div class="col-md-6 pr-1">
     <div class="form-group">
     <asp:Label ID="Label1" runat="server" Text="Address"></asp:Label>
         
    <asp:TextBox ID="addtxtbox" runat="server" class="form-control"  required="required"></asp:TextBox>
    </div>
     </div>

    
    <br />
    <div class="col-md-6 pr-1">
    <div class="form-group">
    <asp:Label ID="clbl" runat="server" Text="City"></asp:Label>
    <asp:TextBox ID="ctxtbox" runat="server" class="form-control"   required="required"></asp:TextBox>
    </div>
    </div>
    <br />
     
                                            
     <div class="col-md-6 pr-1">
     <div class="form-group">
    <asp:Label ID="eilbl" runat="server" Text="Email Id"></asp:Label>
    <asp:TextBox ID="eitxtbox" runat="server" class="form-control"  required="required"></asp:TextBox>
    </div>
    </div>

    <asp:Button ID="ubtn" runat="server" Text="Update" OnClick="ubtn_Click" class="btn btn-success btn-fill pull-left"/>

    <asp:Button ID="rbtn" runat="server" OnClick="rbtn_Click" Text="Reset" class="btn btn-danger btn-fill" />
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
            

</asp:Content>
