<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.Master" AutoEventWireup="true" CodeBehind="start_test.aspx.cs" Inherits="WebApplication5.User.start_test" %>
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
                      <h4 class="card-title"> <i class="fa fa-graduation-cap"></i>Test</h4><hr>
                  </div>
                  <br>

                  <div class="card-body table-full-width table-responsive">
                      <%--<a href="users_create.html" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Users</a>--%>
                      <br><br>
                      <asp:Label ID="Label1" runat="server" Text="Question"></asp:Label>
    <br />
                      <asp:Label ID="lblquestion" runat="server" Text="Lblquestion"></asp:Label>
                      <br />
                      <asp:RadioButton ID="Rdboption1"  runat="server" GroupName="options" />
                      <br />
                      <asp:RadioButton ID="Rdboption2" runat="server" GroupName="options" />
                      <br />
                      <asp:RadioButton ID="Rdboption3" runat="server" GroupName="options" />
                      <br />
                      <asp:RadioButton ID="Rdboption4" runat="server" GroupName="options" />
                      <br />

                      <asp:Button ID="Btnsubmit" runat="server" Text="submit" OnClick="Btnsubmit_Click" />
                      
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
     </form>
</asp:Content>
