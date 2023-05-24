<%@ Page Title="Simon Necktie" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Carousel Start -->
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/carousel_01.jpg" />

                <div class="container">
                    <div class="carousel-caption text-start">
                        <h1>Hand Crafted</h1>
                        <p>Our materials are carefully sewn to produce unique one of a kind pieces.</p>
                        <p><a class="btn btn-lg btn-primary" href="About.aspx">Learn About Us</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                 <img src="images/carousel_02.jpg" />

                <div class="container">
                    <div class="carousel-caption">
                        <h1>Order Today</h1>
                        <p>Looking for a special gift for a special person? You will find it at Simon Necktie.</p>
                        <p><a class="btn btn-lg btn-primary" href="Products.aspx">Check Our Products</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                 <img src="images/carousel_03.jpg" />

                <div class="container">
                    <div class="carousel-caption text-end">
                        <h1>Free Shipping!</h1>
                        <p>Above RM 90 within West Malaysia.</p>
                        <p><a class="btn btn-lg btn-primary" href="Contact.aspx">Contact Us</a></p>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <!-- Carousel End -->
    <!-- Popular Tie Start -->
    <div class="container center">
        <h1 >Our Hand Crafted ties!</h1><br /><br />
        <div class="row">
            <div class="col-lg-4">
                

                 <img class="rounded-circle" width="140" height="140" src="images/hc_01.jpg" />

                <h2>Free Color Swatches</h2>
                <p>It's wedding planning season! Easily find ties to match your wedding colors with our free fabric color swatches.</p>
                <p><a class="btn btn-secondary" href="ColorSwatches.aspx">View details &raquo;</a></p>
            </div>
             <div class="col-lg-4">
                <img class="rounded-circle" width="140" height="140" src="images/hc_02.jpg" />

                <h2>Custom Ties</h2>
                <p>Easily create custom ties for your school or business. The process is quick, affordable and there's no minimum order!</p>
                <p><a class="btn btn-secondary" href="CustomTies.aspx">View details &raquo;</a></p>
            </div>
             <div class="col-lg-4">
                <img class="rounded-circle" width="140" height="140" src="images/hc_03.jpg" />

                <h2>The Right Tie</h2>
                <p>Our ties come in skinny, regular, polyester, cotton, and many different styles, patterns, and materials. </p>
                <p><a class="btn btn-secondary" href="RightTie.aspx">View details &raquo;</a></p>
            </div>

        </div>
    </div>
    <!-- Popular Tie End -->
    
    <div class="container">
        
       
    </div>
</asp:Content>

