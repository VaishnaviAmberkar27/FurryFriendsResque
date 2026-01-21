<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Report1.aspx.cs" Inherits="FurryFriendFoundation.WebForm19" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style ="text/css>
        .bg{
            width:80%;
            background-color:white;
            padding: 10px;
            margin-left:10%;
            margin-top:5%;
            margin-bottom:50%;
            display:flex;
            align-content:center;
            justify-items:center;
            border-radius:20px;
        }
         /* Center the content horizontally */
        .centered-content {
            margin: 0 auto;
            text-align: center;
        }

        /* Adjust padding and margin to ensure space between header, content, and footer */
        .content-wrapper {
            padding-top: 20px; /* Adjust this value as needed */
            padding-bottom: 20px; /* Adjust this value as needed */
            margin-bottom: 20px; /* Adjust this value as needed */
            width:100%;
        }

        .report-container .report-viewer {
            width: 100%;
            margin-top: 50px;
        }
       .report-viewer-container {
            width: 80%; /* Adjust width as needed */
            margin-top: 20px; /* Adjust margin-top to provide space between header and ReportViewer */
            overflow: hidden; /* Hide scrollbars */
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="bg">
   <div class="content-wrapper">
        <div class="centered-content">
            <div align="center" style="font-size:30px">Adoption Report</div>
            <div align="center">
                
                <asp:Button ID="Button1" runat="server" Text="Load Report" Font-Size="Large" BackColor="#FF9933" OnClick="Button1_Click"/>
                <br />
                <div class="report-viewer-container">
                    <asp:ScriptManager runat="server" />
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="50%" Width="95%" ></rsweb:ReportViewer>
                </div>
            </div>
        </div>
    </div>
       <br /><br />
      <br /><br />  <br /><br />
        </div>
</asp:Content>
