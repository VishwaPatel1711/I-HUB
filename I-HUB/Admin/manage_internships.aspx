<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaser.Master" AutoEventWireup="true" CodeBehind="manage_internships.aspx.cs" Inherits="WebApplication5.Admin.manage_internships" %>
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
                     <h4 class="card-title"> <i class="fa fa-graduation-cap"></i> Manage Internships</h4><hr>
                 </div>
                 <br>

                 <div class="card-body table-full-width table-responsive">
                     <a href="users_create.html" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Internships</a>
                     <br><br>
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Iid" HeaderText="Internship Id" />
            <asp:BoundField DataField="Idt" HeaderText="Internship Date" />
            <asp:BoundField DataField="Cid" HeaderText="Company Id" />
            <asp:BoundField DataField="Utitle" HeaderText="User Title" />
            <asp:BoundField DataField="Ubranch" HeaderText="User Branch" />
            <asp:BoundField DataField="Udetails" HeaderText="User Details" />
            <asp:BoundField DataField="Ufiles" HeaderText="User Files" />
            <asp:BoundField DataField="IS_Stipend" HeaderText="Intenship Stipend" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" />
            <asp:BoundField DataField="SAmount" HeaderText="Stipend Amount" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Icons/Delete.jpg" Width="50px"  CommandArgument='<% #Eval("Iid", "{0}") %>' OnClick="ImageButton1_Click" />
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
