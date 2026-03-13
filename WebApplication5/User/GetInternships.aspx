<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.Master" AutoEventWireup="true" CodeBehind="GetInternships.aspx.cs" Inherits="WebApplication5.User.GetInternships" %>
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
                         <h4 class="card-title"> <i class="fa fa-graduation-cap"></i> &nbsp Get Internships</h4><hr>
                     </div>
                     

                     <div class="card-body table-full-width table-responsive">
                         <%--<a href="users_create.html" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Users</a>--%>
                        
    <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
        <Columns>
            <asp:BoundField DataField="Idt" HeaderText="Internship date"  DataFormatString="{0:d}" />
            <asp:BoundField DataField="Cid" HeaderText="Company Id" />
            <asp:BoundField DataField="Utitle" HeaderText="Title" />
            <asp:BoundField DataField="Ubranch" HeaderText="Branch" />
            <asp:BoundField DataField="Udetails" HeaderText="Skills" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" />
            <asp:BoundField DataField="SAmount" HeaderText="Amount" />
            <asp:TemplateField HeaderText="Apply">
                <ItemTemplate>
                    <asp:ImageButton ID="applybutton" runat="server" Height="50px" ImageUrl="~/Icons/question-mark-vector-icon.jpg"  Width="51px" AlternateText="Apply For Internship" CommandArgument='<%#Eval("Iid","{0}") %>' OnClick="applybutton_Click"/>
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
