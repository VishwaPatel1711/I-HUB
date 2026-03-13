<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.Master" AutoEventWireup="true" CodeBehind="ApplyInternship.aspx.cs" Inherits="WebApplication5.User.ApplyInternship" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form runat="server">
 <div class="content">
  <div class="container-fluid">
      <div class="row">
          <div class="col-md-12">
              <div class="card strpied-tabled-with-hover">
                  <div class="card-header ">
                      <h4 class="card-title"> <i class="fa fa-graduation-cap"> </i> &nbsp Apply Internships</h4><hr>
                  </div>
                  

                  <div class="card-body table-full-width table-responsive">
                      <%--<a href="users_create.html" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Users</a>--%>
                      

                      <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                      <br />

                      <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                      <br />
                      <asp:Label ID="Label2" runat="server" Text="Details"></asp:Label>
                      <br />
                      <asp:TextBox ID="txtdtls" runat="server"></asp:TextBox>
                      <br />
                      <asp:Label ID="Label3" runat="server" Text="Upload CV"></asp:Label>
                        <br />
                      <asp:FileUpload ID="FileUpload1" runat="server" />
                      <br />
                      <asp:Button ID="Btnapply" runat="server" Text="Apply" OnClick="Btnapply_Click" />
                      <asp:Button ID="Btnreset" runat="server" Text="Reset" OnClick="Btnreset_Click" />


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            

</form>

</asp:Content>
