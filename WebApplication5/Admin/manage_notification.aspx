<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaser.Master" AutoEventWireup="true" CodeBehind="manage_notification.aspx.cs" Inherits="WebApplication5.Admin.manage_notification" %>
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
                    <h4 class="card-title"> <i class="fa fa-bell"></i>  Manage Notification</h4><hr>
                </div>
                <br>

                <div class="card-body table-full-width table-responsive">
                    <a href="users_create.html" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Notification</a>
                    <br><br>
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Nid" HeaderText="Notification Id" />
            <asp:BoundField DataField="Ndt" HeaderText="Notification Date" />
            <asp:BoundField DataField="Ndtls" HeaderText="Notification Details" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Icons/Delete.jpg" Width="50px"  CommandArgument='<% #Eval("Nid", "{0}") %>' OnClick="ImageButton1_Click" />
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
