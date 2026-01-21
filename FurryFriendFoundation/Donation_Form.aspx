<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Donation_Form.aspx.cs" Inherits="FurryFriendFoundation.WebForm30" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            
        }
        .d-form {
            width: 65%;
            margin: 0 auto;
            background-color: #fff;
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            margin-top:5%;
            margin-bottom:5%;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            
        }
       
        th, td {
            padding: 10px;
            text-align: left;
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
        .required-field::after {
            content: '*';
            color: red;
            margin-left: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-form">
        <center>
            <b>
                <asp:Label ID="Label7" runat="server" Text="Animal Shelter Donation Form"></asp:Label>
            </b>
        </center>
        <hr />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text=" Full Name:" CssClass="required-field"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is requried" ControlToValidate="fnametxt" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="fnametxt" runat="server" placeholder="First Name" Width="700px"  CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name should contain only alphabets" ControlToValidate="fnametxt" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                   <asp:TextBox ID="lnametxt" runat="server" placeholder="Last Name" Width="700px" CssClass="form-control"></asp:TextBox>
                   
                    
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is requried" ControlToValidate="lnametxt" ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Name should contain only alphabets" ControlToValidate="lnametxt" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Email:" CssClass="required-field"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is requeied"  ControlToValidate="emailtxt" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="emailtxt" runat="server" Width="700px" TextMode="Email" CssClass="form-control"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Need @ sign" ControlToValidate="emailtxt" ValidationExpression="^\S+@\S+$"></asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    
                    <asp:Label ID="Label3" runat="server" Text="What do you want to donate:"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email is requeied"  ControlToValidate="RadioButtonList1" ></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;
                    &nbsp;
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Product</asp:ListItem>
                        <asp:ListItem>Money</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="If product please specify:"></asp:Label>
                    <br />
                    <asp:TextBox ID="producttxt" runat="server" Width="700px" ToolTip="Product details" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="If money please specify the amount:"></asp:Label>
                    <br />
                    <asp:TextBox ID="moneytxt" runat="server" Width="700px" ToolTip="Amount" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                          <asp:Label ID="Label8" runat="server" Text="Please select the donation date:" CssClass="required-field"></asp:Label>
                    <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This field is requeied"  ControlToValidate="datetxt" ></asp:RequiredFieldValidator>              
                    <asp:TextBox ID="datetxt" runat="server" Width="700px" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <center>
                             <asp:Button ID="Button1" runat="server" Text="Donate" Width="358px" BackColor="#FFA500"  CssClass="form-submit" ForeColor="Black"  OnClick="Button1_Click" />
                        </center>
                </td>
            </tr>
        </table>
    </div>
    </asp:Content>
