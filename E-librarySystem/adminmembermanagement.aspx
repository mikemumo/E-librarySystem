<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="E_librarySystem.adminmembermanagement" %>
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
                                    <h4>Member Details</h4>             
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />                                   
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
                               <label>Member ID</label>
                                 <div class="form-group">
                                     <div class="input-group">
                                     <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                     <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" /> 
                                     </div>
                                  </div>
                            </div>
  
                            <div class="col-md-6">
                                <label>Account Status</label>
                                 <div class="form-group">
                                     <div class="input-group">
                                     <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ><i class="fa fa-check-circle-o" aria-hidden="true"></i></asp:LinkButton>
                                         <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fa fa-pause-circle-o" aria-hidden="true"></i></asp:LinkButton>
                                           <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fa fa-times-circle-o" aria-hidden="true"></i></asp:LinkButton>                                       
                                     </div>
                                 </div>
                            </div>
 
                        </div>

                         <div class="row">                           
                             <div class="col-md-4">
                                <label>First Name</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="First Name" ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>

                              <div class="col-md-4">
                                <label>Last Name</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Last Name" ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>
                           <div class="col-md-4">
                                <label>Phone </label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Phone" ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>
                        </div>
                        <div class="row">
                                <div class="col-md-6">
                                <label>Email</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Email" ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>
                            </div>
      
                        <div class="row">
                            
                            <div class="col-8 mx-auto">
                                <asp:Button class="btn btn-danger btn-lg btn-block" ID="Button3" runat="server" Text="Delete user Permanently" OnClick="Button3_Click" />
                            </div>
                          
                        </div>                           
                    </div>
                     <a href="homepage.aspx"><< Back to Home</a><br />
                </div>
             
            </div>
            <div class="col-7">

                  <div class="card">
                    <div class="card-body">
                        <div class="col-4-mx-auto">
                            <asp:Button CssClass="btn btn-primary btn-sm" ID="Button2" runat="server" Text="Print Result" OnClick="Button2_Click" />
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member List</h4>             
                                </center>
                            </div>
                        </div>

                  </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ElibraryConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                           
                            <div class="col" id="DivToPrint" runat="server">                               
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                                        <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="phone_no" HeaderText="Phone" SortExpression="phone_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                    </Columns>
                                </asp:GridView>  
                                </div>
  
                               </div>
                      

              </div>
             </div>
        </div>

    </div>
</asp:Content>
