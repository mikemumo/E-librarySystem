<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="E_librarySystem.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

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
                                    <h4>Your Profile</h4>
                                    <span>Account Status - </span>
                                        <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
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
                            <div class="col-md-4">
                               <label>User ID</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-4">
                                <label>Old Password</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Old Password"  ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-4">
                                <label>New Password</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="New Password" TextMode="Password" ></asp:TextBox>
                                 </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-8 mx-auto">
                                    <center>
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block"  ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                                </div>
                                     </center>
                            </div>             
                        </div>            
                    </div>
                     <a href="homepage.aspx"><< Back to Home</a><br />
                </div>

                
            </div>

             <div class="col-7">

                  <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books.jpg" />
                                    
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Issued Books</h4>
                                        <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Your books info"></asp:Label>
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr></hr>
                            </div>
                        </div>


                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ElibraryConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due date" SortExpression="due_date" />
                                    </Columns>
                                </asp:GridView>  
                            </div>
                        </div>
                  </div>
              </div>
             </div>
        </div>

    </div>
</asp:Content>
