<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="volunteer.aspx.cs" Inherits="FurryFriendFoundation.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            font-family: Roboto, Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .vform {
            width: 60%;
            margin: 0 auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
            margin-top:30px;
            margin-bottom:30px;
        }
        .vform h1 {
            text-align: center;
            color: #333333;
        }
        .vform table {
            width: 100%;
        }
        .vform label {
            font-weight: bold;
        }
        .vform input[type="text"],
        .vform input[type="email"],
        .vform input[type="tel"],
        .vform input[type="date"],
        .vform select {
            width: calc(100% - 10px);
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .vform input[type="submit"] {
            width: 100%;
            padding: 15px;
            border: none;
            background-color: #FFA500;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }
        .error-message {
            color: red;
        }
        .required-field::after {
            content: '*';
            color: red;
            margin-left: 5px;
        }
        
    </style>

    <script type="text/javascript">
        function showAlert() {
            alert('Data submitted successfully');
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="vform">
        <h1>Volunteer Application Form</h1>
        <form>
            <table>
                <tr>
                    <td>
                        <asp:Label runat="server" AssociatedControlID="TextBox1" CssClass="required-field">Full Name</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="TextBox1" ></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name" CssClass="form-control"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name should contain only alphabets" ControlToValidate="TextBox1" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator> 
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                           <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name" CssClass="form-control"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Name should contain only alphabets" ControlToValidate="TextBox2" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator> 

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" AssociatedControlID="addressline" CssClass="required-field">Address</asp:Label>
                        <asp:TextBox ID="addressline" runat="server" placeholder="Full Address" CssClass="form-control" readonly>Maharastra</asp:TextBox>
                        <asp:DropDownList ID="Sample2" runat="server" CssClass="form-control">
                           <asp:ListItem Text="City" Value="" Disabled="true" Selected="true"></asp:ListItem>
                            <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Ratnagiri</asp:ListItem>
                            <asp:ListItem>Kolhapur</asp:ListItem>
                            <asp:ListItem>Solhapur</asp:ListItem>
                            <asp:ListItem>Nashik</asp:ListItem>
                            <asp:ListItem>Navi Mumbai</asp:ListItem>
                            <asp:ListItem>Jalgaon</asp:ListItem>
                            <asp:ListItem>Dhule</asp:ListItem>
                            <asp:ListItem>Chandrapur</asp:ListItem>
                            <asp:ListItem>Parbhani</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="TextBox7" runat="server" placeholder="Zipcode" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" AssociatedControlID="TextBox3" CssClass="required-field">Phone No.</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="TextBox3" ></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Phone No." CssClass="form-control" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Only 10 digits are allowed!" ControlToValidate="TextBox3" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" AssociatedControlID="TextBox4" CssClass="required-field">Email</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="TextBox4" ></asp:RequiredFieldValidator>               
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Email" CssClass="form-control" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Need @ sign" ControlToValidate="TextBox4" ValidationExpression="^\S+@\S+$"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" AssociatedControlID="TextBox5" CssClass="required-field">Date Of Birth</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="TextBox5" ></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="YYYY-MM-DD" CssClass="form-control" TextMode="Date" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" AssociatedControlID="RadioButtonList1">Are you willing to work as a volunteer?</asp:Label> 
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="RadioButtonList1" ></asp:RequiredFieldValidator>
                         <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>                      
                        <asp:Label runat="server" AssociatedControlID="RadioButtonList2">Do you like pets?</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This Field is Required !" ControlToValidate="RadioButtonList2" ></asp:RequiredFieldValidator>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" ForeColor="Black" OnClick="Button1_Click" ValidationGroup="volunteerForm" />



                    </td>
                </tr>
            </table>
                <asp:Label ID="msg" runat="server" Text="" BorderColor="Black" BackColor="White"></asp:Label>
        </form>
    </div>

</asp:Content>
