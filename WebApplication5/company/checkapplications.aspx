<%@ Page Title="" Language="C#" MasterPageFile="~/company/CompanySite1.Master" AutoEventWireup="true" CodeBehind="checkapplications.aspx.cs" Inherits="WebApplication5.company.checkapplications" %>
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
                    <h4 class="card-title"> <i class="fa fa-graduation-cap"></i>Test Details</h4><hr>
                </div>
                <br>

                <div class="card-body table-full-width table-responsive">
                    <a href="AcceptedApplications.aspx" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Create Test</a>
                    <br><br>
   
   
    <asp:Label ID="Tlbl1" runat="server" Text="select job"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
        <asp:DropDownList ID="DDLJobs" runat="server" DataSourceID="SqlDataSource1" DataTextField="Utitle" DataValueField="Iid"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectdb %>" SelectCommand="SELECT * FROM [Internshiptbl] WHERE ([Cid] = @Cid) ORDER BY [Iid] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="Cid" SessionField="cid" Type="Int32" />
            </SelectParameters>
                    </asp:SqlDataSource>
        <br />
        <asp:Button ID="Btnsubmit" runat="server" Text="Check Applications" OnClick="Btnsubmit_Click" Width="218px" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="IAid" HeaderText="Application ID" />
                <asp:BoundField DataField="IAdt" HeaderText="Date" />
                <asp:BoundField DataField="Uname" HeaderText="Name" />
                <asp:BoundField DataField="CVrank" HeaderText="CV Rank" />
                <asp:BoundField DataField="Testrank" HeaderText="Test Rank" />
                <asp:TemplateField HeaderText="Accept">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Accept" CommandArgument='<%#Eval("IAid","{0}") %>' OnClick="Button1_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Reject">
                    <ItemTemplate>
                        <asp:Button ID="BtnReject" runat="server" Text="Reject" CommandArgument='<%#Eval("IAid","{0}") %>' OnClick="BtnReject_Click" />
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
