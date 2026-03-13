<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaser.Master" AutoEventWireup="true" CodeBehind="manage_feedback.aspx.cs" Inherits="WebApplication5.Admin.manage_feedback" %>
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
                     <h4 class="card-title"> <i class="fa fa-comments-o"></i>  Manage Feedback</h4><hr>
                 </div>
                 <br>

                 <div class="card-body table-full-width table-responsive">
                     <a href="users_create.html" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Feedback</a>
                     <br><br> 
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Fid" HeaderText="Feedback Id" />
            <asp:BoundField DataField="Fdate" HeaderText="Feedback Date" />
            <asp:BoundField DataField="Fdtls" HeaderText="Feedback Details" />
            <asp:BoundField DataField="Uid" HeaderText="User Id" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Icons/Delete.jpg" Width="50px"  CommandArgument='<% #Eval("Fid", "{0}") %>' OnClick="ImageButton1_Click" />
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
