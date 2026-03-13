<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="WebApplication5.User.changepassword" %>
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
                    <asp:Label ID="cpwdlbl" runat="server" Text="Current Password"  ></asp:Label>
                    <asp:TextBox ID="cpwdtxtpwd" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    </div>
                    </div>
     <div class="col-md-6 pr-1">
    <div class="form-group">
    <asp:Label ID="npwdlbl" runat="server" Text="New Password"></asp:Label>
    
    <asp:TextBox ID="npwdtxtbox" runat="server" class="form-control"></asp:TextBox>
    </div>
    </div>
            <div class="col-md-6 pr-1">
            <div class="form-group">
            <asp:Label ID="rnpwdlbl" runat="server" Text="Re type Password"></asp:Label>
    
        <asp:TextBox ID="rnpwdtxtbox" runat="server"></asp:TextBox>
           </div>
 </div>     
    <asp:Button ID="updatebtn" runat="server" Text="Update" OnClick="updatebtn_Click" class="btn btn-success btn-fill pull-left" />

    <asp:Button ID="resetbtn" runat="server" OnClick="resetbtn_Click" Text="Reset" class="btn btn-danger btn-fill" />
                             <div class="clearfix"></div>
                                                    </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
