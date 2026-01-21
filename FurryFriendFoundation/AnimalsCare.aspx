<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="AnimalsCare.aspx.cs" Inherits="FurryFriendFoundation.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .bg {
            background-color: white;
            width:100%;
            
        }

        .data-item {
            width: 250px;
            float: left;
            margin: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
            transition: transform 0.3s ease-in-out;
           
        }

        .data-item:hover {
            transform: scale(1.05);
        }

        .data-item img {
            max-width: 100%;
            height: auto;
        }

        .view-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 5px 10px;
            text-transform: uppercase;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

            .view-button:hover {
                background-color: #0056b3;
            }
            datalist{
                width:100%;
                margin-left:20%;
              
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg">
        <h1>Animals In Care</h1>
        <hr />
        
        <asp:DataList ID="DataList1" runat="server" CaptionAlign="Top" CellPadding="3" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" GridLines="Vertical"  RepeatColumns="4" CellSpacing="5" Width="100%">
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <div class="data-item">
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' Visible="false" />
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    <asp:Image ID="ImagePathLabel"  runat="server" ImageUrl='<%# Eval("Imagepath") %>' Height="250px" Width="250px" />
                    <br />
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
                    <br />
                    <asp:Button ID="button1" runat="server"  Text="Donate" CssClass="btn-warning" OnClick="button1_Click" BackColor="#FF9900" />
                </div>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White"  />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [animalinCare]"></asp:SqlDataSource>
        <br />
    </div>
</asp:Content>
