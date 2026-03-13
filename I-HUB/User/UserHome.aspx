<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="WebApplication5.User.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<form runat="server">
    <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="dbox dbox--color-1">
                                <div class="dbox__icon">
                                    <i class="fa fa-graduation-cap"></i>
                                </div>
                                <div class="dbox__body">
                                    <span class="dbox__count">8,252</span>
                                    <span class="dbox__title">Internships</span>
                                </div>
                                
                                <div class="dbox__action">
                                    <a href="users_list.html" class="dbox__action__btn">More Info</a>
                                </div>              
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="dbox dbox--color-2">
                                <div class="dbox__icon">
                                    <i class="fa fa-file-text-o"></i>
                                </div>
                                <div class="dbox__body">
                                    <span class="dbox__count">100</span>
                                    <span class="dbox__title">My Application</span>
                                </div>
                                
                                <div class="dbox__action">
                                    <a href="" class="dbox__action__btn">More Info</a>
                                </div>              
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="dbox dbox--color-3">
                                <div class="dbox__icon">
                                    <i class="fa fa-bell"></i>
                                </div>
                                <div class="dbox__body">
                                    <span class="dbox__count">2502</span>
                                    <span class="dbox__title">Notifications</span>
                                </div>
                                
                                <div class="dbox__action">
                                    <a href="" class="dbox__action__btn">More Info</a>
                                </div>              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </form>
    </asp:Content>