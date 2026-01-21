<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="AddminLogIn.aspx.cs" Inherits="FurryFriendFoundation.WebForm29" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        .auto-style1 {
            width: 134px;
        }
        .log {
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            margin:10%;
            width: 35%;
            padding:20px;
            border-radius:20px;
            margin-left:35%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="log">
        <div class="log-content">
            <h1>Admin Log In</h1>
            <hr />
            <table class="w-100">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Width="200px" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br />
                        <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table>  
            <br />
            <div class="btn1">
                <asp:Button ID="button" Text="Log in" runat="server" CssClass="btn btn-warning" OnClick="button_Click" style="height: 40px" />
               
            </div>
        </div>
    </div>

    <div class="message">
        <asp:Label ID="msg" runat="server" Text=" " ForeColor="Red"></asp:Label>
    </div>
</asp:Content>
