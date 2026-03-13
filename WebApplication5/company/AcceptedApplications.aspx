<%@ Page Title="" Language="C#" MasterPageFile="~/company/CompanySite1.Master" AutoEventWireup="true" CodeBehind="AcceptedApplications.aspx.cs" Inherits="WebApplication5.company.AcceptedApplications" %>
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
                    <h4 class="card-title"> <i class="fa fa-graduation-cap"></i>Accepted Applications</h4><hr>
                </div>
                <br>

                <div class="card-body table-full-width table-responsive">
                    <a href="checkapplications.aspx" class="btn btn-success btn-sm btn-fill" style="margin-left: 5px;">Check Applications</a>
                    <br><br>
                    <asp:Label ID="Label1" runat="server" Text="select Job"></asp:Label>
                    <asp:DropDownList ID="DDLJOB" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Utitle" DataValueField="Iid"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectdb %>" SelectCommand="SELECT * FROM [Internshiptbl] WHERE ([Cid] = @Cid) ORDER BY [Iid] DESC">
                        <SelectParameters>
                            <asp:SessionParameter Name="Cid" SessionField="cid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IAid" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="IAid" HeaderText="Application ID" InsertVisible="False" ReadOnly="True" SortExpression="IAid" />
                            <asp:BoundField DataField="IAdt" HeaderText="Date" SortExpression="IAdt" />
                            <asp:BoundField DataField="Uname" HeaderText="Name" SortExpression="Uname" />
                            <asp:BoundField DataField="CVrank" HeaderText="CV rank" SortExpression="CVrank" />
                            <asp:BoundField DataField="Testrank" HeaderText="Test rank" SortExpression="Testrank" />
                        </Columns>
                    </asp:GridView>

                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectdb %>" SelectCommand="SELECT * FROM [InternshipApplicationtbl] WHERE (([Iid] = @Iid) AND ([Astatus] = @Astatus))">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="DDLJOB" Name="Iid" PropertyName="SelectedValue" Type="Int32" />
                                                            <asp:Parameter DefaultValue="ACCEPTED" Name="Astatus" Type="String" />
                                                        </SelectParameters>
                    </asp:SqlDataSource>

                                                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
            
    </form>
</asp:Content>
