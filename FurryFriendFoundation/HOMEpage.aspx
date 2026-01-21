<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HOMEpage.aspx.cs" Inherits="FurryFriendFoundation.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .hero-image {
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('/Images_1/Banner-scaled.jpg');
            height: 90vh;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }

        .hero-text {
            text-align: right;
            position: absolute;
            top: 50%;
            right: 5%;
            transform: translateY(-50%);
            color: white;
        }

     

        .componets {
            text-align: center;
            background-color:white;
            padding:20px;
        }

        .heading-text {
            display: inline-block;
            padding: 10px 25px;
            color: dimgray;
            text-align: center;
        }

       .card {
    width: 80%;
    border: none;
    border-radius: 15px;
    /*box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);*/
    transition: transform 0.3s ease;
    margin-top:20px;
}

.card:hover {
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    transform: scale(1.05);
}

.card-img-top {
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
   
}

.card-title {
    color: #333;
}

.card-text {
    color: #666;
     border-top-left-radius: 15px;
    border-top-right-radius: 15px;
}
 .heading-text {
            display: inline-block;
            padding: 10px 25px;            
            text-align: center;
            background-color:#F7BE06;
            width:100%;
        }
  /* Color invert hover effect for btn-warning */
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

 .card {
      width: 100%; /* Cover all horizontal space */
      padding: 10px; /* Add padding on each side */
      border:hidden:
    }

    .card .row .col-md-4 {
      height: 100%; /* Make the height of the column match the card height */
    }

    .card .row .col-md-4 img {
      height: 100%; /* Make the height of the image match the column height */
      width: 100%; /* Make the width of the image 100% of the column */
      object-fit: cover; /* Maintain aspect ratio and cover the entire column */
    }
   .icon-box {
            display: inline-block;          
            text-align: center;
            margin: 10px;
            width: 80%;
            margin-top:100px;
        }

        .icon {
            font-size: 48px;
            margin-bottom: 10px;
        }
.text {
            text-transform: uppercase;
            font-weight: bold;
        }

        .paragraph {
            margin-top: 10px;
        }
        
        .table {
            width: 100%;
            margin: 10px 0;
            padding: 10px;
            border-collapse: separate;
            border-spacing: 10px; 
        }
         td {
            padding: 10px;
           
        }
         .other-content{
             margin-top:100px;
         }
        
    </style>    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="hero-image">
      <div class="hero-text">
         <h1 style="font-size:50px">Help them beat the heat</h1>
         <p>This scorching summer season help us procure durable cement water bowls  
           to keep our dear furry friends hydrated!
             </p>
          <br />
         <a href="Donation_Form.aspx" class="btn btn-warning">Send Help</a>
      </div>
   </div>
<div class="componets">
        

    <div class="heading-text">
        <h1>Animals In Treatment</h1>
        <br />
        <img src="/images/amtm-line.png" />
    </div>
    <div class="card-table">
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <img src="/Images_1/R1.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Sheru</h5>
                    <p class="card-text">Sheru faced an unfortunate car accident in Borivali West, resulting in a fractured leg. We need your support to raise Rs. 25000 to support Ramu’s medical treatment and rehabilitation.</p>
                    <a href="Donation_Form.aspx" class="btn btn-warning">Send Help</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="/Images_1/R2.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Ginger</h5>
                    <p class="card-text">Ginger’s journey took an unexpected turn in Andheri West, where she faced an accident resulting in a broken leg. To aid her recovery, we are seeking funds of Rs. 25000. Your support will ensure Zoya heals and regains her strength.</p>
                    <a href="Donation_Form.aspx" class="btn btn-warning">Send Help</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="/Images_1/cow1.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Capila</h5>
                    <p class="card-text">Capila, finds herself in dire need after facing a harrowing accident. Despite her tender age, she confronts the aftermath of a terrible incident with bravery and strength. Now, as she battles to recover, Capila seeks compassionate souls willing to extend a helping hand.</p>
                    <a href="Donation_Form.aspx" class="btn btn-warning">Send Help</a>
                </div>
            </div>
        </div>
    </div>
</div>
       
        <div class="other-content">
              <div>
                  <div class="label-msg"><asp:Label ID="LabelMsg" runat="server" Text="HOW TOGETHER WE CAN MAKE A DIFFERENCE" BackColor="#ffc107" Font-Bold="True" Font-Size="Large"></asp:Label></div>
                  <br />
        <h1>FURRY FRIENDS RESQUE HAS HELPED AND SAVED LIVES OF THOUSANDS OF HOMELESS ANIMALS AND NOW WE NEED YOUR HELP TO CONTINUE THIS.</h1>
        <br />
        <img src="/images/amtm-line.png" />
    </div>
        </div>

       <table style="padding: 10px; margin: 5px; border-collapse: collapse; border-spacing: 20px">
                <tr>
                    <td>
                        <div class="img-text">
                            <div class="icon-box">
                                <div class="icon"><i class="fa-solid fa-paw"></i></div>
                                <div class="text">ADOPT</div>
                                <div class="paragraph">    
                                    <p>There are so many takers for pedigree dogs. But our Desi Indian breed look up to you.. Make a difference! Adopt
Don’t buy or breed animals while there are many animals deprived of a good home. Come visit us &  you might just meet your soulmate.</p>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="icon-box">
                            <div class="icon"><i class="fa-regular fa-face-smile"></i></div>
                            <div class="text">VOLUNTEER</div>
                            <div class="paragraph">
                                <p>As a volunteer at our shelter, you may offer a variety of support like providing foster care for puppies till adopted! A few hours a week with the animals means the world to them, not to mention , the memories that will stay with you for a lifetime. </p>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="icon-box">
                            <div class="icon"><i class="fa-solid fa-piggy-bank"></i></div>
                            <div class="text">DONATE</div>
                            <div class="paragraph">
                                <p>No amount is too small. It goes a long way to help animals at the rehab center. All donations are exempted from Income Tax under 80G. We also accept Foreign funds under FCRA act 1976.</p>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>

        <div class="other-content">
            <div class="label-msg"><asp:Label ID="Label1" runat="server" Text="LATEST UPDATE FROM FURRY FRIENDS" BackColor="#ffc107" Font-Bold="True" Font-Size="Large"></asp:Label></div>
                 <br />
        <h1>EACH HOMELESS ANIMAL HAS A STORY TO TELL....</h1>
        <br />

        </div>
        <table>
            <tr>
            <td>
                <div class="icon-box">
                            <div class="icon"><img src="images/1.jpg" /></div>                           
                            <div class="paragraph">
                                <p>SNOWY RADHA GOT HER HOME AND THE BEST LOVING PARENTS</p>
                            </div>
                        </div>
            </td>
                <td>
                <div class="icon-box">
                            <div class="icon"><img src="images/2.jpg" /></div>                           
                            <div class="paragraph">
                                <p>TIGER & BRUNO HAVE SAID BYE TO THEIR DISABILITIES</p>
                            </div>
                        </div>
            </td>
                <td>
                <div class="icon-box">
                            <div class="icon"><img src="images/3.jpg" /></div>                           
                            <div class="paragraph">
                                <p>FURRY FRIENDS RESQUE HAD FOUND HIM SEVERELY STARVED FOR DAYS</p>
                            </div>
                        </div>
            </td>
                <td>
                <div class="icon-box">
                            <div class="icon"><img src="images/4.jpg" /></div>                           
                            <div class="paragraph">
                                <p>ALOO & KALU WERE RESCUED ON THAT RAINY DAY...!</p>
                            </div>
                        </div>
            </td>
                </tr>
        </table>
        </div>
    </div>
   
     
</asp:Content>
