<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="FurryFriendFoundation.WebForm28" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style ="text/css">
        /* Custom CSS to style the form */
        .center-box {
            width: 400px;
            margin: auto;
            margin-top: 50px;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 10px;
            background-color: #f9f9f9;
            margin-bottom:30px;
        }
        .form-control {
            width: 100%;
            margin-bottom: 10px;
        }
        .submit-btn {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3 center-box">
                <h2 class="text-center">Forgot Password</h2>
                <div>
                    <label for="txtEmail">Enter your email address:</label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" />
                                   </div>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Send Email" OnClick="btnSubmit_Click"  CssClass="btn btn-warning submit-btn" />
                <asp:Label ID="msg" runat="server" Text=" " CssClass="text-danger"></asp:Label>
            </div>
        </div>
    </div>

</asp:Content>
