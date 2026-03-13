<%@ Page Title="" Language="C#" MasterPageFile="~/company/CompanySite1.Master" AutoEventWireup="true" CodeBehind="Question_Display.aspx.cs" Inherits="WebApplication5.company.Question_Display" %>
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
                    <h4 class="card-title"> <i class="fa fa-bell"></i>Get Notifications</h4><hr>
                </div>
                <br>
        <div class="card-body table-full-width table-responsive">
    <a href="Create_Test.aspx" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Test</a>
    <br><br>
    
    <asp:Label ID="Label1" runat="server" Text="Select Test"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Tname" DataValueField="TId">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectdb %>" SelectCommand="SELECT * FROM [Testtbl]"></asp:SqlDataSource>
&nbsp;<br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Question" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="QId" HeaderText="Question ID" />
            <asp:BoundField DataField="Question" HeaderText="Question" />
            <asp:BoundField DataField="Option1" HeaderText="Option1" />
            <asp:BoundField DataField="Option2" HeaderText="Option2" />
            <asp:BoundField DataField="Option3" HeaderText="Option3" />
            <asp:BoundField DataField="Option4" HeaderText="Option4" />
            <asp:BoundField DataField="Correct Answer" HeaderText="Correct Answer" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/Icons/Delete.jpg" Width="40px" OnClick="ImageButton1_Click"  CommandArgument='<% #Eval("QId", "{0}") %>'  />
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
