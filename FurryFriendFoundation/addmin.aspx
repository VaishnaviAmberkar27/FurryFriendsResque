<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="addmin.aspx.cs" Inherits="FurryFriendFoundation.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        table{
                margin-top:5%;
            margin-bottom:5%;
                 padding:20%;
                 width:50%;

                 
        }
        .box{
            margin-top:5%;
            margin-bottom:5%;
            display:flex;
            justify-content:center;
            justify-content:space-around;
            align-items:center;
            background-color:white;
            width:70%;
            box-shadow:rgba(0,0,0,0.4)10px,10px;
            border-radius:30px;
        }
        .btn-warning {
    background-color: #ffc107;
    color: #fff;
    font-weight: bold;
    font-family: Arial, sans-serif;
    border: none;
    padding: 20px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    color:black;
}

.btn-warning:hover {
    background-color: #c79100; /* darker shade of yellow */
}

       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <center>
        <div class="box">
            <table cellpadding="2" class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="donation" runat="server" Text="Donation" Height="200px" Width="300px" OnClick="Click_Donation" CssClass="btn btn-warning" />
                    </td>
                    <td>
                        <asp:Button ID="PetAdoption" runat="server" Text="Pet Adoption" Height="200px" Width="300px" OnClick="Click_Adoption" CssClass="btn btn-warning" />
                    </td>
                    <td>
                        <asp:Button ID="Volunteer" runat="server" Text="Volunteer" Height="200px" Width="300px" OnClick="Click_Volunteer" CssClass="btn btn-warning" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="animalsincare" runat="server" Text="Animals In Care" Height="200px" Width="300px" OnClick="Click_AnimalsInCare" CssClass="btn btn-warning" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="AnimalsForAdpotion" runat="server" Text="Animals For Adoption" Height="200px" Width="300px" OnClick="AnimalsForAdpotion_Click" CssClass="btn btn-warning" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="reports" runat="server" Text="Reports" Height="200px" Width="300px" OnClick="reports_Click" CssClass="btn btn-warning" />
                    </td>
                </tr>
            </table>
        </div>
    </center>
       
</asp:Content>
