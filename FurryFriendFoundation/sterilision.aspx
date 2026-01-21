<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="sterilision.aspx.cs" Inherits="FurryFriendFoundation.sterilision" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style ="text/css>
         .hero-image {
            background-image: linear-gradient(rgba(0, 0, 0, 0.10), rgba(0, 0, 0, 0.10)), url('/Images_1/BG_11.jpg');
            height: 80vh;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
            max-width:100%;
            margin-bottom:10px;

           
        }

        .hero-text {
            text-align: right;
            position: absolute;
            top: 50px;
            color: black;
            margin-right:80px;
            margin-top:50px;
            margin-left:10px;
        }
        .bg{
            background-color:white;
        }
         .left-section {
      background-color: #f8f9fa;
      padding: 20px;
       width:50%;
       margin-top:10px;
       margin-bottom:10px;
    }

    .right-section {
      background-color: #e9ecef;
      padding: 20px;
      width:50%;
      margin-top:10px;
        margin-bottom:10px;
    }

    .dropdown-menu {
      background-color: #ffc107; /* Warm orange */
    }
    .container mt-10 {
        background-color:white;
        padding:10px;
        margin-top:10px;
        margin-bottom:10px;
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
        .blog {
            margin-left:30%;
            margin: 20px;
            padding: 30px; /* increased padding for expanded size */
            border: 1px solid #ccc;
            border-radius: 10px;
            display: inline-block;
            width: 340px; /* increased width */
            transition: transform 0.3s ease; /* added transition for hover effect */
        }

        .blog:hover {
            transform: scale(1.05); /* scale up the size on hover */
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* added shadow effect on hover */
        }

        .blog h2 {
            color: #333;
        }

        .blog p {
            color: #666;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="bg">
   <div class="hero-image">
       
      <div class="hero-text">
         <p style="font-size:40px">We have sterilised and vaccinated 9,200+ </p>
             <p style="font-size:40px" >animals till date.</p>
         <img src="/images/amtm-line.png" style="color:white" />
          <br />     
      </div>
   </div>

             
<div class="container mt-10">
  <div class="row">
    <div class="col-md-6 left-section">
      <h2>Furry Friends resque is home to millions of street dogs.</h2>
              <p> We help improve the welfare of stray and abandoned dogs by addressing overpopulation and preventing more street dogs from joining the fold.</p>
        <p>Dogs and cats are brought in by the public as well as by our animal rescue and volunteer teams. We have also expanded our sterilisation program to suburban Ratnagiri — home to 10 lakh street dogs.   </p>
      <button class="btn btn-warning">Adopt</button>
    </div>
    <div class="col-md-6 right-section">
      
      <p style="font-size:30px;">
       Sterilisation prevents suffering, extends life for females, and reduces fighting and subsequent injury in males. Combined with rabies innoculation, sterilisation is internationally recognised as the most effective and human way to control population and spread of diseases. </p>
     
    </div>
  </div>
      <h1>Stray Animals: Do's and Don'ts</h1>

            <div class="blog">
                <h2>Do: Provide Food and Water</h2>
                <p>It's important to offer food and water to stray animals to ensure they stay healthy and hydrated.</p>

            </div>

            <div class="blog">
                <h2>Don't: Approach Aggressively</h2>
                <p>Never approach a stray animal aggressively as it may feel threatened and react defensively.</p>

            </div>

            <div class="blog">
                <h2>Do: Consider Adoption</h2>
                <p>If you have the means and ability, consider adopting a stray animal to give them a loving home.</p>

            </div>

            <div class="blog">
                <h2>Don't: Ignore Signs of Illness</h2>
                <p>Be vigilant for signs of illness in stray animals and seek veterinary care if needed.</p>

            </div>

            <div class="blog">
                <h2>Do: Provide Shelter</h2>
                <p>Offer shelter or a safe space for stray animals to protect them from harsh weather conditions.</p>

            </div>

            <div class="blog">
                <h2>Don't: Feed Harmful Foods</h2>
                <p>Avoid feeding stray animals harmful foods like chocolate, onions, or grapes, as they can be toxic.</p>

            </div>
        </div>
    </div>
</asp:Content>