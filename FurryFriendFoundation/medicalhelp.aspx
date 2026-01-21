<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="medicalhelp.aspx.cs" Inherits="FurryFriendFoundation.WebForm25" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <style>
        /* Corrected style tag syntax */
        .hero-image {
            background-image: linear-gradient(rgba(0, 0, 0, 0.10), rgba(0, 0, 0, 0.10)), url('/Images_1/bg1.jpg');
            height: 90vh;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
            max-width: 100%;
            max-height: 30%;
            margin-bottom: 10px;
        }

        .hero-text {
            text-align: right;
            position: absolute;
            top: 50%;
            right: 10px;
            color: black;
        }

        .left-section {
            background-color: #f8f9fa;
            padding: 20px;
            width: 50%;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .right-section {
            background-color: #e9ecef;
            padding: 20px;
            width: 50%;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .dropdown-menu {
            background-color: #ffc107; /* Warm orange */
        }

        .container.mt-10 {
            background-color: white;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .bg {
            background-color: white;
            width: 100%;
        }

        .btn-warning:hover {
            background-color: #777; /* Gray background */
            color: #000; /* Black text */
        }

        /* Glow effect for all buttons */
        .btn {
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.8); /* Glow effect on hover */
            transition: box-shadow 0.3s ease;
        }

        .btn:hover {
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.8); /* Increased glow effect on hover */
        }

        .icon-box {
            display: inline-block;
            text-align: center;
            margin: 10px;
            width: 100%;
            margin-top: 100px;
        }

        .icon img {
            width: 450px;
        }

        /* Style for links */
        a {
            color: black; /* Set link color to black */
            text-decoration: none; /* Remove underline from links */
        }

        /* Style for links on hover */
        a:hover {
            color: black; /* Set hover color to black (can be adjusted) */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg">
        <div class="hero-image">
            <div class="hero-text">
                <p style="font-size:50px">Medical care and rehabilitation for animals when they need it most</p>
                <img src="/images/amtm-line.png" style="color:white" />
                <br />
            </div>
        </div>


        <div class="container mt-10">
            <div class="row">
                <div class="col-md-6 left-section">
                    <h2>Our new animal hospital is now open!</h2>
                    <p>
                        Thanks to your generous contributions, our new AMTM hospital is ready. Fully equipped with medical apparatuses, appliances, and infra facilities, our hospital is up and running.</p>
                    <p>We are now able to treat any and every animal patient — be it strays or pets — and give them the best medical services at subsidized rates. We look forward to your continued support.
                    </p>
                  <button class="btn btn-warning"><a href="Donation_Form.aspx" > Donate </a>  </button>
                </div>
                <div class="col-md-6 right-section">
                    <h2>We treat hundreds of animals each month</h2>
                    <p>
                        Our hospital and rehabilitation facility provide medical treatment, compassionate care, and a safe place for vulnerable animals to recover and recuperate.</p>
                    <p>From road accident injuries to skin diseases and wounds to life-threatening conditions, our expert team looks after animals and enables them to access a life of dignity free of pain.
                    </p>
                    <li class="nav-item dropdown">
          <a class="nav-link active dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
             Equipment List
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="AnimalsCare.aspx">BP Machinee</a></li>
            <li><a class="dropdown-item" href="animalsforadoption">Pulse Oximeter </a></li>
            <li><a class="dropdown-item" href="sterilision.aspx">Multipara</a></li>
            <li><a class="dropdown-item" href="medicalhelp.aspx">Surgical Equipment</a></li>
          </ul>
        </li>
                </div>
            </div>
        </div>
        <table style="margin-left:15px; width:80%;">
            <tr>
                <td>
                    <div class="icon-box">
                        <div class="icon"><img src="/Images_1/medical1.jpeg" /></div>
                    </div>
                </td>
                <td>
                    <div class="icon-box">
                        <div class="icon"><img src="/Images_1/medical2.jpeg" /></div>
                    </div>
                </td>
                <td>
                    <div class="icon-box">
                        <div class="icon"><img src="/Images_1/medical3.jpeg" /></div>
                    </div>
                </td>

            </tr>
        </table>

    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
