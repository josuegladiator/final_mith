<?php 
session_start();
error_reporting(0);
include('includes/config.php');
?>




<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <title>MITH -Best fashion company in Burundi,Eac</title>
    <meta name="description" content="">
    <meta name="msapplication-tap-highlight" content="yes" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0" />

    <!-- Google Web Font -->
    <link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lekton:400,700,400italic' rel='stylesheet' type='text/css'>

    <!--  Bootstrap 3-->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- OWL Carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">

    <!--  Slider -->
    <link rel="stylesheet" href="css/jquery.kenburnsy.css">

    <!-- Animate -->
    <link rel="stylesheet" href="css/animate.css">

    <!-- Web Icons Font -->
    <link rel="stylesheet" href="css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="css/iconmoon.css">
    <link rel="stylesheet" href="css/et-line.css">
    <link rel="stylesheet" href="css/ionicons.css">

    <!-- Magnific PopUp -->
    <link rel="stylesheet" href="css/magnific-popup.css">

    <!-- Tabs -->
    <link rel="stylesheet" type="text/css" href="css/tabs.css" />
    <link rel="stylesheet" type="text/css" href="css/tabstyles.css" />

    <!-- Loader Style -->
    <link rel="stylesheet" href="css/loader-1.css">

    <!-- Costum Styles -->
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- Favicon -->
    <link rel="icon" type="image/ico" href="favicon.ico">

    <!-- Modernizer & Respond js -->
    <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body>

    <!-- Preloader -->
    <div class="cover"></div>

    <div class="header">
        <div class="container">
            <div class="logo">
                <a href="index.html">
                    <img src="img/logo.jpg" alt="Logo">
                </a>
            </div>

            <!-- Menu Inline -->
           
            <?php

           include('includes/navbar.php');

           ?>
            <!-- End of Menu Inline -->
            
        </div>
    </div>

    <div class="container" style="margin-top:12px;">
        <div class="header-page ef-parallax-bg" style="background-image:url(img/header.jpg)">
            <div class="col-md-6 col-md-offset-6">
                <div class="row">
                    <div class="inner-content">
                        <div class="header-content">

                                           <?php
                          $id=$_GET['cid'];
          $ret=mysqli_query($con,"select * from category where id='$id'");
          $row=mysqli_fetch_array($ret);

                            echo('<h1>'.$row['categoryName'].'</h1>');
                            ?>
                            <hr>
                            <p>Everything created in simple way</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container margin-top">
        <div class="portfolio-wrapper">
            <button class="nav">
                <span class="icon-container">
            <span class="line line01"></span>
                <span class="line line02"></span>
                <span class="line line03"></span>
                <span class="line line04"></span>
                </span>
            </button>
            <div class="works-filter">

            	<div style="position: relative; right:10px;">
            		<a href="javascript:void(0)"  class="filter active" data-filter="mix" style="margin-right: 10px;">All</a>

                          <?php
                          $id=$_GET['cid'];
          $ret=mysqli_query($con,"select * from subCategory where categoryid='$id'");
          while ($row=mysqli_fetch_array($ret))
          {
            # code...


          ?>
                <a href="javascript:void(0)" class="filter" data-filter="<?php echo $row['id'];?>" style="margin-right: 30px;"><?php echo $row['subcategory'];?></a>
                <!--<a href="javascript:void(0)" class="filter" data-filter="web">Pants  &amp;shorts</a>
                <a href="javascript:void(0)" class="filter" data-filter="graphic">peingoirs</a>-->
            <?php } ?>
            	</div>
               

               
                
            </div>
            <div class="js-masonry">
                <div class="row" id="work-grid">
                    <!-- Begin of Thumbs Portfolio -->
                    
              <?php
              $id=$_GET['cid'];
          $ret=mysqli_query($con,"select * from products where category='$id'");
          while ($row=mysqli_fetch_array($ret))
          {
            # code...


          ?>
                    <div class="col-md-4 col-sm-4 col-xs-12 mix <?php echo htmlentities($row['subCategory']);?>">
                        <div class="img home-portfolio-image">
                            <img src="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" alt="Portfolio Item">
                            <div class="overlay-thumb">
                                <a href="javascript:void(0)" class="like-product">
                                    <i class="ion-ios-heart-outline"></i>
                                    <span class="like-product">Liked</span>
                                    <span class="output">250</span>
                                </a>
                                <div class="details">
                                    <span class="title">STYLE FASHION</span>
                                    <span class="info"><?php echo htmlentities($row['productName']);?></span>
                                </div>
                                <span class="btnBefore"></span>
                                <span class="btnAfter"></span>
                                <a class="main-portfolio-link" href="single-project.html"></a>
                            </div>
                        </div>
                    </div>

                <?php } ?>

                </div>
            </div>
            <div class="load-more">
                <a href="javascript:void(0)" id="load-more"><i class="icon-refresh"></i></a>
            </div>
        </div>
    </div>

    <div class="footer margin-top">
        <div class="container">
            <div class="row">
                    <div class="col-md-2 col-sm-4 col-xs-12">
                        <div class="footer-inner">
                            <div class="footer-content">
                                <h4>MITH</h4>
                                    <address>Bujumbura <br>blvd de l'uprona no 20 <br>Burundi</address>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-2 col-md-push-8 col-sm-4 col-xs-12">
                        <div class="footer-inner">
                            <div class="footer-content">
                               <h4>CONTACT INFO</h4>
                                <p>
                                    T:003 124 115 <br>
                                    E:info@mith.com <br>
                                    W:www.mith.com
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="footer-inner">
                            <div class="footer-content">
                            <ul class="social-media">
                                <li><a href="#"><i class="iconmoon-facebook"></i></a></li>
                                <li><a href="#"><i class="iconmoon-twitter"></i></a></li>
                                <li><a href="#"><i class="iconmoon-flickr2"></i></a></li>
                                <li><a href="#"><i class="iconmoon-dribbble3"></i></a></li>
                                <li><a href="#"><i class="iconmoon-pinterest"></i></a></li>
                                <li><a href="#"><i class="iconmoon-linkedin2"></i></a></li>
                            </ul>
                            <span class="copyright-mark">&copy; 2020 MITH, ALL RIGHTS RESERVED</span>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
    <a href="javascript:void(0)" class="scroll-top" id="scroll-top"><i class="pe-7s-angle-up"></i></a>


    <script src="js/vendor/jquery-1.11.2.min.js"></script>
    <script data-pace-options='{ "ajax": false }' src="js/vendor/pace.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/vendor/classie.js"></script>
    <script src="js/vendor/isotope.pkgd.min.js"></script>
    <script src="js/vendor/jquery.velocity.min.js"></script>
    <script src="js/vendor/jquery.kenburnsy.min.js"></script>
    <script src="js/vendor/textslide.js"></script>
    <script src="js/vendor/imagesloaded.pkgd.min.js"></script>
    <script src="js/vendor/tabs.js"></script>
    <script src="js/ef-slider.js"></script>
    <script src="js/vendor/owl.carousel.min.js"></script>
    <script src="js/vendor/jquery.magnific-popup.min.js"></script>
    <script src="js/vendor/jquery.social-buttons.min.js"></script>
    <script src="js/vendor/wow.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/ajax.js"></script>
</body>

</html>