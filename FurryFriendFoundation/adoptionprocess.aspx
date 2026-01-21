<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="adoptionprocess.aspx.cs" Inherits="FurryFriendFoundation.WebForm27" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .step {
            margin-bottom: 20px;
        }
        .underline {
            border-bottom: 2px solid;
            margin-bottom: 20px;
            padding-bottom: 10px;
        }
        .container {
            transition: box-shadow 0.3s ease-in-out;
        }
        /* Add hover effect */
        .container:hover {
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <!-- Add underline -->
                    <h2 class="text-center mb-4 underline">Easy Adoption Process</h2>
                    <div class="step">
                        <h3>Step 1: Fill out the online application form</h3>
                        <p>Provide your name, email, phone number, and select your preferred animal type.</p>
                    </div>
                    <div class="step">
                        <h3>Step 2: Application review</h3>
                        <p>Once your application is submitted, our team will review it.</p>
                    </div>
                    <div class="step">
                        <h3>Step 3: Approval and notification</h3>
                        <p>If your application is approved, you will receive a call or email with further instructions.</p>
                    </div>
                    <div class="step">
                        <h3>Step 4: Visit the shelter</h3>
                        <p>Visit the shelter on the specified date to meet your potential furry friend and complete the adoption process.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
