<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Codefile="Whoweare.aspx.cs" Inherits="FurryFriendFoundation.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/c8db3fae54.js" crossorigin="anonymous"></script>
    <style>
        /* Custom CSS styles */
        .image-container {
            background-image: url("/images/imgabout.jpg");
            background-size: cover;
            background-position: center;
            height: 90vh; /* Adjust this as per your need */
            padding:70px;
            border-radius:10px;
            margin-left:20px;
            margin-top:20px;
            margin-bottom:20px;
        }

        .organization-info {
            padding: 20px;
        }

        /* Adjust this for smaller screens */
        @media (max-width: 768px) {
            .image-container {
                height: 50vh; /* Adjust this as per your need */
            }
        }
        .bg{
            background-color:white;
            border-radius:10px;
        }
        .heading-text {
            display: inline-block;
            padding: 10px 25px;            
            text-align: center;
            background-color:#F7BE06;
            width:100%;
        }
        .team-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            margin-top:20px;
            margin-bottom:20px;
        }

        .team-member {
            text-align: center;
            margin: 20px;
        }

        .member-photo {
            width: 150px; /* Increase the width */
            height: 150px; /* Increase the height */
            border-radius: 50%;
            overflow: hidden;
            margin: 0 auto 10px;
        }

        .member-photo img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .more-contents {
            display: flex;
            align-items: center;
            margin-top:20px;
            padding:20px;
        }

        /* Description paragraph */
        .description {
            padding: 10px;
        }

        /* Image with scale transition */
        .shelter-image {
            transition: transform 0.3s ease;
        }

        /* Scale the image on hover */
        .shelter-image:hover {
            transform: scale(1.1);
        }

        .heading-text {
            display: inline-block;
            padding: 10px 25px;
            color: dimgray;
            text-align: center;
            color:black;
            background-color:#FF9900;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg">
        <div class="container-fluid">
            <div class="row">
                <!-- Image Container -->
                <div class="col-lg-6 p-0">
                    <div class="image-container"></div>
                </div>

                <!-- Organization Information -->
                <div class="col-lg-6 p-0">
                    <div class="organization-info">
                        <h1>About Us</h1>
                        <hr />
                        <h2><b>Furry Friends Rescue's vision is to become India's most blessed organization for pet welfare and a complete and dedicated care center for animals in distress.</b></h2>
                        <br />
                        <p>Furry Friends Rescue's is a non–government, non–profitable, registered animal welfare organization working for the prevention of cruelty towards animals and a better environment for mankind. Furry Friends Rescue is recognized by the Animal Welfare Board of India, which is a government body.</p>
                        <p>We conduct regular awareness programs in and around Ratnagiri besides its anti-rabies camps for homeless animals. The society is doing its bit to help eradicate rabies and control the homeless animal population by immunization and undertaking the ABC (Animal Birth Control) Program.</p>
                        <p>We are here for every animal in need and have been since 2010. We believe that every animal deserves the best. That’s why we are dedicated to the rescue and rehabilitation of stray and abandoned animals — we believe we can transform their quality of life through kindness and compassion. </p>
                        <ul>
                            <li>Email: furryfriendsfoundation10@gmail.com</li>
                            <li>Phone: +91 9409384523</li>
                            <li>Address: Ratnagir, India</li>
                            <li>Open for all weekdays</li>
                            <li>Time: 09:00AM to 05:00PM</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="heading-text">
                <h1>Meet Our Crazy Team</h1>
                <br />
                <img src="/images/amtm-line.png" />
            </div>
            <div class="team-container">
                <div class="team-member">
                    <div class="member-photo">
                        <img src="/images/t2.png" alt="Member 1">
                    </div>
                    <div class="member-info">
                        <h3>Vedang Patil</h3>
                        <p>Animal Veterinarian</p>
                    </div>
                </div>

                <div class="team-member">
                    <div class="member-photo">
                        <img src="/images/t7.jpg" alt="Member 2">
                    </div>
                    <div class="member-info">
                        <h3>Bhavesh Ghadi</h3>
                        <p>Zoologists</p>
                    </div>
                </div>

                <div class="team-member">
                    <div class="member-photo">
                        <img src="/images/t9.jpg" alt="Member 3">
                    </div>
                    <div class="member-info">
                        <h3>Ramesh More</h3>
                        <p>Shelter Managers</p>
                    </div>
                </div>

                <div class="team-member">
                    <div class="member-photo">
                        <img src="/images/t4.jpeg" alt="Member 4">
                    </div>
                    <div class="member-info">
                        <h3>Darshna Jadhav</h3>
                        <p>Veterinary Assistant</p>
                    </div>
                </div>

                <div class="team-member">
                    <div class="member-photo">
                        <img src="/images/t8.jpg" alt="Member 5">
                    </div>
                    <div class="member-info">
                        <h3>Anushka Nanarkar</h3>
                        <p>Groomer</p>
                    </div>
                </div>
            </div>
            <div class="more-contents">
                <!-- Image of the shelter -->
                <img src="/images/carousel_img.jpg" alt="Furry Friends Rescue Shelter" class="img-fluid shelter-image" style="max-width: 50%;">

                <!-- Description of the shelter -->
                <div class="description">
                    <h2>About Our Shelter</h2>
                    <hr />
                    <p>We are Furry Friends Rescue Shelter, located in Maharashtra, Ratnagiri, near Maruti Mandir. Our shelter provides a safe and loving environment for animals in need. Nestled amidst the serene surroundings of Ratnagiri, our shelter offers a peaceful retreat for animals who have been abandoned, abused, or neglected.</p>
                    <p>At our shelter, we prioritize the well-being and happiness of our furry friends. Our dedicated team of caregivers ensures that each animal receives proper care, nutritious food, medical attention, and lots of love and affection. We believe in providing a homely atmosphere where animals can thrive and eventually find their forever homes.</p>
                    <p>Visit us today to experience the warmth and compassion that define Furry Friends Rescue Shelter. Together, let's make a difference in the lives of our furry companions.</p>
                </div>
            </div>
            <div class="tour">
                <div class="heading-text">
                    <h1>Virtual Tour</h1>
                    <br />
                    <img src="/images/amtm-line.png" />
                    <div class="video" style="background-color:#F7BE06;">
                        <table style="margin-top:20px; border-collapse: separate; border-spacing: 10px; padding:15px;">
                            <tr>
                                <td>
                                    <iframe width="450" height="315" src="https://www.youtube.com/embed/PLhwy72A930?si=uiu-yIzCINk-xXAc&modestbranding=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                                </td>
                                <td>
                                    <iframe width="450" height="315" src="https://www.youtube.com/embed/SKBaZO8JdL0?si=kKmn3VclMHZoXbLR&modestbranding=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                                </td>
                                <td>
                                    <iframe width="450" height="315" src="https://www.youtube.com/embed/zXEwDVDLX6U?si=MOOoGpjRktNWKfPL&modestbranding=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>
