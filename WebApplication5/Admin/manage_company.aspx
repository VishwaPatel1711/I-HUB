<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaser.Master" AutoEventWireup="true" CodeBehind="manage_company.aspx.cs" Inherits="WebApplication5.Admin.WebForm2" %>
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
                    <h4 class="card-title"> <i class="fa fa-briefcase"></i>  Manage Company</h4><hr>
                </div>
                <br>

                <div class="card-body table-full-width table-responsive">
                    <a href="users_create.html" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Company</a>
                    <br><br>
                         
    
    
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
       <Columns>
            <asp:BoundField DataField="Cid" HeaderText="Company Id" />
            <asp:BoundField DataField="Cname" HeaderText="Company Name" />
            <asp:BoundField DataField="Cemail" HeaderText="Company Email" />
            <asp:BoundField DataField="Ccity" HeaderText="Company City" />
            <asp:BoundField DataField="Cadd" HeaderText="Company Address" />
            <asp:BoundField DataField="Ccontact" HeaderText="Company Contact" />
            <asp:BoundField DataField="Cwebsite" HeaderText="Company Website" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Icons/Delete.jpg" Width="50px"  CommandArgument='<% #Eval("Cid", "{0}") %>' OnClick="ImageButton1_Click"/>
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
