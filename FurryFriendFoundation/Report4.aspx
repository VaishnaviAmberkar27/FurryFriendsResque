<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Report4.aspx.cs" Inherits="FurryFriendFoundation.WebForm23" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style ="text/css">
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
             .centered-content {
            margin: 0 auto;
            text-align: center;
        }
            /* Center the content horizontally */
               /* Adjust padding and margin to ensure space between header, content, and footer */
        .content-wrapper {
            padding-top: 20px; /* Adjust this value as needed */
            padding-bottom: 20px; /* Adjust this value as needed */
            margin-bottom: 20px; /* Adjust this value as needed */
        }

        /* Style for the ReportViewer container */
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
                <div align="center" style="font-size:30px">Donation Report</div>
                <div align="center">
                    <asp:Button ID="Button1" runat="server" Text="Load Report" Font-Size="Large" BackColor="#FF9933" OnClick="Button1_Click" />
                    <br />
                    <div class="report-viewer-container">
                        <asp:ScriptManager runat="server" />
                        <rsweb:reportviewer ID="ReportViewer1" runat="server" CssClass="report-viewer" Height="50%" Width="80%"></rsweb:reportviewer>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
