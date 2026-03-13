<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaser.Master" AutoEventWireup="true" CodeBehind="manage_users.aspx.cs" Inherits="WebApplication5.Admin.manage_users" %>
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
                        <h4 class="card-title"> <i class="fa fa-users"></i>  Manage Users</h4><hr>
                    </div>
                    <br>

                    <div class="card-body table-full-width table-responsive">
                        <a href="users_create.html" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Users</a>
                        <br><br>
                        
            
    <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="uid" HeaderText="User Id" />
            <asp:BoundField DataField="uname" HeaderText="User Name" />
            <asp:BoundField DataField="uemail" HeaderText="User Email" />
            <asp:BoundField DataField="ucity" HeaderText="User City" />
            <asp:BoundField DataField="uadd" HeaderText="User Address" />
            <asp:BoundField DataField="ucontact" HeaderText="User Contact" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Icons/Delete.jpg" Width="50px"  CommandArgument='<% #Eval("uid", "{0}") %>' OnClick="ImageButton1_Click" />
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
