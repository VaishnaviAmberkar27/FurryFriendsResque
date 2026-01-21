<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="FurryFriendFoundation.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container1 {
            width: 50%;
            margin-bottom:5%;
            margin-top:5%;
            margin-left:25%;
            text-align: left;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
            padding:10px;

        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            margin-bottom: 5px;
           
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .btn {
            padding: 10px 20px;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }
          .form-submit {
            width: 100%;
            padding: 15px;
            border: none;
            background-color: #FFA500;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container1">
        <h2>Delivery Tracking</h2>
        <hr />
        <div class="form-group">
            <label class="form-label">Name:</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label class="form-label">Email:</label>

            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
        
            <label class="form-label">Contact:</label>
            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <h3>Delivery Information</h3>
        <hr />

        <div class="form-group">
            <label class="form-label">Delivery Date:</label>
            <asp:TextBox ID="txtDeliveryDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>
        <div class="form-group">
            <label class="form-label">Delivery Address:</label>
            <asp:TextBox ID="txtDeliveryAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Delivery" CssClass="btn-warning" Class="form-submit" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>
