<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FurryFriendFoundation.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Register Form</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <style>
       
       .form-image {
             width: 100%; /* Ensure the image takes up the entire width of the column */
        height: auto; 
           
        }

        .container1 {
            background-color: white;
            width: 70%;
            margin-top: 30px;
            margin-bottom: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-left: 15%;           
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
              .register-form {
            background-color: white;
            padding: 20px;
            margin-top: 50px;
            margin-bottom: 50px;
            border:solid; /* Add rounded corners for aesthetics */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Add shadow effect */
            width:40%;
        }

        @media (min-width: 768px) {
            .register-form {
                margin-top: 100px;
                margin-bottom: 100px;
            }
        }
        .col-md-5{
           display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container1">
       
        <div class="row">
            <div class="col-md-5">
                 <img src="images/regimg.png" alt="Your Image" class="form-image" />
          
                </div>
            <div class="col-md-6">
                <div class="row">
                    <h2 class="mt-5 mb-4 text-center">Register Form</h2>
                    <hr />
                    <div class="col-md-12">
                        <div class="mb-3">
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <asp:Label ID="lblContact" runat="server" Text="Contact"></asp:Label>
                            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <asp:Label ID="pass" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Rows="3" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <asp:Label ID="Label1" runat="server" Text="Confirm Password"></asp:Label>
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Rows="3" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                       <center> <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-warning" OnClick="btnRegister_Click"/></center>
                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                     <br />
                            </div>
                    </div>
                </div>
            </div>
        </div>

    <asp:Label ID="msg" runat="server" Text=" "></asp:Label>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</asp:Content>
