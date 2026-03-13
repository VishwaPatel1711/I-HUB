<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.Master" AutoEventWireup="true" CodeBehind="MyApplication.aspx.cs" Inherits="WebApplication5.User.MyApplication" %>
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
                          <h4 class="card-title"> <i class="fa fa-file-text-o"></i>My Applications
                          </h4><hr>
                      </div>
                      

                      <div class="card-body table-full-width table-responsive">
                       <%--   <a href="users_create.html" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Applications</a>--%>
                      
          
    <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="IAid" HeaderText="InternshipApplication id" />
            <asp:BoundField DataField="IAdt" HeaderText="InternshipApplicationdate" />
            <asp:BoundField DataField="Uid" HeaderText="User id" />
            <asp:BoundField DataField="uname" HeaderText="User name" />
            <asp:BoundField DataField="Udetails" HeaderText="User Details" />
            <asp:BoundField DataField="Astatus" HeaderText="Application status" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="Imgbtn1" runat="server" ImageUrl="~/Icons/Delete.jpg" Width="40px" CommandArgument='<% #Eval("IAid","{0}") %>' OnClick="Imgbtn1_Click"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
                          
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            

</form>

</asp:Content>
