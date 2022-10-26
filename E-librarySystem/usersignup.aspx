<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="E_librarySystem.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Login</h4>
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr></hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label>First Name</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="First Name"></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-6">
                                <label>Last Name</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Last Name" ></asp:TextBox>
                                 </div>
                            </div>
                        </div>

                             <div class="row">
                            <div class="col-md-6">
                               <label>Phone No</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Phone" TextMode="Phone"></asp:TextBox>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                           ControlToValidate="TextBox3"
                                            ErrorMessage="Only numeric allowed." ForeColor="Red"
                                            ValidationExpression="^[0-9]{10}$" ValidationGroup="NumericValidate">
                                      </asp:RegularExpressionValidator>
                                     
                                 </div>
                            </div>

                             <div class="col-md-6">
                                <label>Email</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                 </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                <span class="badge badge-pill badge-info">Login Credentials</span>
                                </center>
                            </div>             
                        </div>         
                        <div class="row">
                            <div class="col-md-6">
                               <label>Member ID</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="User ID" ></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-6">
                                <label>Password</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                 </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                       
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click" />    
                                 </div>
                            </div>             
                        </div>            
                    </div>
                     <a href="homepage.aspx"><< Back to Home</a><br />
                </div>

                
            </div>
        </div>

    </div>
</asp:Content>
