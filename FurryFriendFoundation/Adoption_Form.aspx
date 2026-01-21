<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Adoption_Form.aspx.cs" Inherits="FurryFriendFoundation.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .auto-style1 {
            width: 100%;
            
        }
        .auto-style2 {
            height: 53px;
        }
        
        .auto-style4 {
            height: 53px;
            width: 312px;
        }
        table {
            background-color: white;
        }
       .application {
      background-color: white;    
      padding:40px;     
      width: 60%;
      box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2); /* Increased shadow effect */
      display: grid;
      align-items: center;
       margin: 20px auto; /* Center align horizontally */
       border-radius:20px;
}
        .agreement {
            color: red;
            font-weight: bold;
        }
        ol {
            margin-left: 20px;
        }
        .b1 {
            width: 100%;
            padding: 15px;
            border: none;
            
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
       #error{
           width:10%;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="application">
        <h1>Adoption Application and Contract</h1>
        <hr />
        <table cellpadding="1"  class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Perspective Pet Parent:-" CssClass="required-field"></asp:Label>
                </td>
                <td>
                    <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="fullnametxt" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="fullnametxt" runat="server" placeholder="Full Name" Width="400px" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Name should contain only alphabets" ControlToValidate="fullnametxt" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>

                    <br />
                &nbsp;
                </td>
            </tr>
      <tr>
                <td class="auto-style3">
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Name of Pet You Wish to Adopt:-" CssClass="required-field" ></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="petname1txt" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="petname1txt" runat="server" Width="400px" CssClass="form-control"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="Type of pet" CssClass="required-field"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="All feilds are requried" ControlToValidate="pettypetxt" ></asp:RequiredFieldValidator>
                    <asp:RadioButtonList ID="pettypetxt" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Dog</asp:ListItem>
                        <asp:ListItem>Cat</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Phone No." CssClass="required-field"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required!"  ControlToValidate="phonetxt" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="phonetxt" runat="server" TextMode="Phone" placeholder="Phone no" Width="400px" CssClass="form-control"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only 10 digits are allowed!" ControlToValidate="phonetxt" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <br />

                    <asp:Label ID="Label3" runat="server" Text="Email Address:-" CssClass="required-field"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is requeied"  ControlToValidate="emailtxt" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="emailtxt" runat="server" placeholder="Email" TextMode="Email" Width="400px" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Need @ sign" ControlToValidate="emailtxt" ValidationExpression="^\S+@\S+$"></asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Address:-" CssClass="required-field"></asp:Label>
                </td>
                <td>
                    <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="addresstxt" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="addresstxt" runat="server" TextMode="MultiLine" Width="400px" CssClass="form-control" placeholder="Enter full address"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Do You Own Any Pets?" CssClass="required-field"></asp:Label>
                </td>
                <td>
                    <br />
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Pet Name:-"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="petnametxt" runat="server" Width="400px" CssClass="form-control" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Do ?" CssClass="required-field"></asp:Label>
                </td>
                <td>
                    <br />
                     <asp:RequiredFieldValidator ID="homerxt" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="RadioButtonList1" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="hometxt" runat="server" Width="400px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <br/>
                     
                    <asp:Label ID="Label9" runat="server" Text="Enter Your Age:-" CssClass="required-field"></asp:Label>
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="(All applicants must be above 18)" ForeColor="#999999"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="agetxt" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="agetxt" runat="server"  Width="400px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Emergency Contact No." CssClass="required-field"></asp:Label>
                </td>
                <td> 
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Only Contains NuThis Field is Required!"  ControlToValidate="emgcontacttxt" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="emgcontacttxt" runat="server" TextMode="Phone" Width="400px" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Only 10 digits are allowed!" ControlToValidate="emgcontacttxt" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>  


        <br />
        <asp:Label ID="Label12" runat="server" Text="Agreement" CssClass="agreement"></asp:Label>
          <hr />
        <br />
        <asp:Label ID="Label14" runat="server" Text="This agreement is made and entered into this Date" CssClass="required-field"></asp:Label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="All feilds are requried" ControlToValidate="date" ></asp:RequiredFieldValidator>          
        <asp:TextBox ID="date" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Label ID="Label15" runat="server" Text="Between"></asp:Label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="All feilds are requried" ControlToValidate="sign" ></asp:RequiredFieldValidator>        
        <asp:TextBox ID="sign" runat="server" placeholder="Name"></asp:TextBox>
        <asp:Label ID="Label16" runat="server" Text="And  The Furry Friends Resque."></asp:Label>
          
        <br />
        <p>Terms and Conditions</p>
        <ol>
            <li>The Adopter agrees to provide the Animal with a good, safe, and loving home.</li>
            <li>The Adopter will provide the Animal with necessary veterinary care, including annual check-ups, vaccinations, and emergency treatment.</li>
            <li>The Adopter will not neglect or abuse the Animal and will comply with all laws and regulations related to animal care.</li>
            <li>The Adopter will notify the Shelter immediately if the Animal is lost or stolen and will make every effort to recover the Animal.</li>
            <li>The Adopter understands that the Shelter makes no guarantees about the Animal's temperament and is not responsible for future damages or injuries caused by the Animal.</li>
            <li>If the Adopter can no longer keep the Animal, the Adopter will return the Animal to the Shelter and not abandon the Animal or give it to another party without the Shelter's written consent.</li>
         </ol>
        <br />
                     
            <ol> <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes, I agree all these terms and conditions." CssClass="required-field"/></ol>        
                 
        <br />
      
     <asp:Button ID="button1" runat="server" Text="Submit" BackColor="#FF9900" class="b1" ForeColor="Black" OnClick="button1_Click" />

    </div>
    <p id="error">
        <asp:Label ID="msg" runat="server" Text="" BorderColor="Black" BackColor="White"></asp:Label>
    </p>
</asp:Content>
