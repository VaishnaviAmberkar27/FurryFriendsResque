<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="FurryFriendFoundation.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .pay {
            width: 70%;
            margin: 0 auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            margin-top:5%;
            margin-bottom:5%;
        }
        .auto-style1 {
            width: 70%;
            height:70%;
        }
        .auto-style2 {
            width: 440px;
        }
        .form-submit {
            width: 100%;
            padding: 15px;
            border: none;
            background-color: #FFA500;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pay">
        <h1>Donation Form</h1>
        <hr />
        <p>Thank you for being a part of us. Your generous donation goes directly to providing love, care, and a second chance for animals in need. Together, we're making a difference in their lives.</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Donation Amount"></asp:Label>
            <asp:TextBox ID="amounttxt" runat="server"></asp:TextBox>
        </p>
        <hr />
        <asp:Label ID="label2" runat="server" Text="Card Details"></asp:Label>
        <br />
        <table cellspacing="0" class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="400px" placeholder="Name of Card Holder"></asp:TextBox>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="400px" Placeholder="Card Number"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" Width="400px" placeholder="MM/YY"></asp:TextBox>
                </td>
                <td><i class="fa-solid fa-credit-card"></i> <i class="fa-brands fa-cc-mastercard"></i> <i class="fa-brands fa-cc-visa"></i> <i class="fa-brands fa-cc-amazon-pay"></i></td>    
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" Width="400px" placeholder="CVC"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <center>
            <asp:Button ID="Button1" runat="server" Text="Donate" Width="358px" BackColor="#FFA500" ForeColor="Black" CssClass="form-submit" OnClick="Button1_Click" />
        </center>
    </div>
</asp:Content>
