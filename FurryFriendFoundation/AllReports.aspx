<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="AllReports.aspx.cs" Inherits="FurryFriendFoundation.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .rpt {
            border: solid 1px;
            width: 50%;
            box-shadow: rgba(0, 0, 0, 0.10) 10px;
            margin-top: 10px;
            margin-bottom: 10px;
            display: flex;
            justify-content: space-around;
            text-align: left;
        }
        .rpt h2 {
            margin-left: 0;
            display: flex;
            align-items: center;
        }
       .fa-regular.fa-hand-point-right:before {
            animation: blink 1s infinite;
        }
        @keyframes blink {
            0% {
                opacity: 1;
            }
            50% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        } 
        .bg {
            background-color: white;
            height: 500px;
            width: 100%;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg">
        <div class="btn">
            <a href="addmin.aspx"> <i class="fa-solid fa-arrow-left"></i></a>
        </div>
        <center>
            <div class="rpt">
                <h2><i class="fa-regular fa-hand-point-right"></i> <a href="Report1.aspx">Report of Animals Adoption List</a></h2>
            </div>
            <br />
            <div class="rpt">
                <h2><i class="fa-regular fa-hand-point-right"></i> <a href="Report2.aspx">Report of Animals in Care</a></h2>
            </div>
            <br />
            
            <br />
            <div class="rpt">
                <h2><i class="fa-regular fa-hand-point-right"></i> <a href="Report4.aspx">Report of Donation</a></h2>
            </div>
            <br />
            <div class="rpt">
                <h2><i class="fa-regular fa-hand-point-right"></i> <a href="Report5.aspx">Report of Volunteer</a></h2>
            </div>
        </center>
    </div>
</asp:Content>
