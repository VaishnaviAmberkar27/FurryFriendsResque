<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Codefile="animalslist.aspx.cs" Inherits="FurryFriendFoundation.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table {
            margin-left:20%;
            margin-top:50px;
            width: 50%;
            
        }
        .border {
            /*background-color: rgba(0, 0, 0, 0.6);*/
            background-color:white;
        }
        .form-control {
            width: 100%;
            
            box-sizing: border-box; /* Include padding in width calculation */
            margin-bottom: 10px; /* Add space between form controls */
        }
        .btnSubmit {
            width: 100%;
            padding: 10px;
            background-color: #ffc107; /* Use Bootstrap warning color */
            border: none;
            color: #fff;
            cursor: pointer;
        }
        .container1{
            border:1px solid;
            width:50%;
            height:50%;
            margin-left:25%;
            margin-top:10px;
        }
         .grid-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 5%;
            margin-right:10px;
            
        }

        .grid-table th,
        .grid-table td {
            border: 1px solid #dddddd; /* Add borders to cells */
            padding: 8px;
            text-align: left;
        }

        .grid-table th {
            background-color: #f2f2f2;
        }

        .grid-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .grid-table tr:hover {
            background-color: #dddddd;
        }

        .grid-table img {
            display: block;
            margin-left: auto;
            margin-right: auto;
            max-width: 100%;
            max-height: 100%;
        }
        .container {
            padding: 20px;
        }
         .btn a{
            color:black;
        }
         .grid-table {
            max-width: 900px; /* Adjust the width as per your requirement */
            overflow-x: auto; /* Enable horizontal scrolling if content overflows */
            padding: 5%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 10px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="border">
           <div class="btn">
            <a href="addmin.aspx"> <i class="fa-solid fa-arrow-left"></i></a>
    </div>
    <div class="container1"> 
        <center><h1>Animals For Adoption</h1></center>
        <hr />
        <table>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Name of Animal:"></asp:Label>
                    <asp:TextBox ID="nametxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Species:"></asp:Label>
                    <asp:TextBox ID="sptxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Breed:"></asp:Label>
                    <asp:TextBox ID="breedtxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Date of Admission:"></asp:Label>
                    <asp:TextBox ID="addtxt" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Gender:"></asp:Label>
                    <asp:TextBox ID="gendertxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Age:"></asp:Label>
                    <asp:TextBox ID="agetxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btnSubmit" OnClick="btnSubmit_Click" ForeColor="Black" />
                </td>
            </tr>
        </table>
        <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    </div>
          <div class="grid-table">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="gridview-style" ForeColor="Black"  OnRowDeleting="GridView1_RowDeleting"   AutoGenerateDeleteButton="True">
     <Columns>
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# GetImageUrl(Eval("ImagePath")) %>' Height="70px" Width="150px" />
            </ItemTemplate>  
        </asp:TemplateField>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Species" HeaderText="Species" SortExpression="Species" />
        <asp:BoundField DataField="Breed" HeaderText="Breed" SortExpression="Breed" />
        <asp:BoundField DataField="DateOfAdd" HeaderText="Date of Admission" SortExpression="DateOfAdd" DataFormatString="{0:d}" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" DeleteText="" EditText="" UpdateText="" />
    </Columns>
</asp:GridView>

          </div>
        </div>

</asp:Content>
