<%@ Page Title="" Language="C#" MasterPageFile="~/company/CompanySite1.Master" AutoEventWireup="true" CodeBehind="GetNotification.aspx.cs" Inherits="WebApplication5.company.GetNotification" %>
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
                    <%--<h4 class="card-title"> <i class="fa fa-bell"></i>Get Notifications</h4><hr>--%>
                </div>
                <br>
        <div class="card-body table-full-width table-responsive">
    <a href="Create_Test.aspx" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Test</a>
    <br><br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Ndtls" HeaderText="Notification Details" />
            <asp:BoundField DataField="Nid" HeaderText="Notification ID" />
            <asp:BoundField DataField="Ndt" HeaderText="Notification Date" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="~/Icons/Delete.jpg" OnClick="ImageButton2_Click" Width="40px" CommandArgument='<%#Eval("Nid","{0}") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
           
        </EmptyDataTemplate>
    </asp:GridView>
            
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
    </form>
</asp:Content>
