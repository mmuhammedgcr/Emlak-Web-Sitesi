<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Emlak.iletisim" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ALTIN EMLAK</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!-- =======================================================
        Theme Name: Gp
        Theme URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-templat/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->

</head>
<body class="homepage">
  <header id="header">
        <nav class="navbar navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.aspx"><img src="images/baslik3.png"/></a>
                </div>
				
                <div class=" navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="index.aspx">ANA SAYFA</a></li>
                        <li><a href="hakkımızda.aspx">HAKKIMIZDA</a></li>
                         <li class="dropdown">
                               <a href="#" data-toggle="dropdown" class="dropdown-toggle">SATILIK <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="konut.aspx">KONUT</a></li>
                                    <li><a href="isyeri.aspx">İŞ YERİ</a></li>
                                    <li><a href="arsa.aspx">ARSA</a></li>                                 
                                </ul>
                            </li>
                         <li class="dropdown">
                               <a href="#" data-toggle="dropdown" class="dropdown-toggle">KİRALIK <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="konut.aspx">KONUT</a></li>
                                    <li><a href="isyeri.aspx">İŞ YERİ</a></li>
                                    <li><a href="arsa.aspx">ARSA</a></li>
                                </ul>
                            </li>
                        <li><a href="galeri.aspx">Galeri</a></li> 
                        <li class="active"><a href="iletisim.aspx">İLETİŞİM</a></li> 
                        <li><a href="login.aspx"><img src="images/png/login.PNG"/>LOGİN</a></li>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->


    <section id="contact" class="section" style="background: #ffffff">
        <div class="container">
            <div class="row">
                <p>.</p>
                <div class="col-md-8 col-md-offset-2">                    
                    <div class="sub-heading">
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-6" style="text-align: center">
                    <h2 style="color:red">İLETİŞİM FORMU</h2>
                    <p>
                        .
                    </p>
                    <!-- start contact form -->
                    <div class="cform" id="contact-form">


                        <div id="sendmessage">Mesaj gönderildi.. Teşekkürler</div>
                        <div id="errormessage"></div>
                        <form action="https://formspree.io/muhammedgocer20@gmail.com" method="post" enctype="plain/text" role="form" class="contactForm">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" id="name" placeholder="İsminiz" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" name="email" id="email" placeholder="Email Adresiniz" data-rule="email" data-msg="Please enter a valid email" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Konu" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Lütfen boş bırakmayın..." placeholder="Mesaj"></textarea>
                                <div class="validation"></div>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-lg btn-theme">GÖNDER</button>
                            </div>

                        </form>



                    </div>
                    <div class="text-center">
                        </p>
                                         </p>
                                            <a rel="test3">
                                                <img src="images/mail.png" alt="" /></a>
                        <!-- END contact form -->
                    </div>
                </div>
                <div class="col-md-6" style="text-align: center">

                    <h2 style="color:red">KONUMUMUZ</h2>
                    <p>.</p>

                    <!-- map -->
                    <div id="section-map" class="clearfix">
                       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d391771.367609911!2d32.482579826419396!3d39.90303941891153!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d347d520732db1%3A0xbdc57b0c0842b8d!2sAnkara!5e0!3m2!1str!2str!4v1503870331539" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

                    </div>
                    <p>.</p>
                    <p>.</p>
                    <div class=" ">
                        <h3 class="cont-title" style="color: #cc0000">ADRES</h3>
                        <div class="">
                            <p class="white"><span aria-hidden="true" class="fa fa-map-marker h3"><span style="color: #666600">Konum:</span> Karaca Mahallesi 2030 sokak C-3 Blok No:143, BİLKENT/ANKARA</span></p>
                            <p class="white"><span aria-hidden="true" class="fa fa-phone h3"><span style="color: #666600">Telefon:</span> 0(312) 255 77 88</span> </p>
                            <p class="white"><span aria-hidden="true" class="fa fa-phone h3"><span style="color: #666600">Gsm:</span> 0507 874 55 44 - 0554 899 77 88</span></p>
                            <p class="white"><span aria-hidden="true" class="fa fa-envelope h3"><span style="color: #666600">Email:</span> gocer_emlak@gmail.com</span> </a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div align="center">
            <script language="Javascript" src="http://sa.sayaclar.com/c/s4.php?a=lixuikl&s=1a8"></script>
            <br />

            <h class="gffgf">
               <span class="gfd"><span class="wad">
                    <h4 style="color:#336600"> Toplam Ziyaretçi</h4></span>
                                                                    </h3>
                                                                             </span>
        </div>
    </section>
<div class="top-bar">
		<div class="container">
			<div class="row">
			    <div class="col-lg-12">
				   <div class="social">
						<ul class="social-share">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-skype"></i></a></li>
						</ul>
				   </div>
                </div>
			</div>
		</div><!--/.container-->
	</div><!--/.top-bar-->
	
	<footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                     Tüm Haklar Saklıdır.
                    <div class="credits">                      
                       Mavi Emlak © 2016
                    </div>
                    <div class="credits">
                       <h3 style="text-align:right">Yaz Dönemi Staj Projesi...</h3> 
                    </div>
                </div>
                 
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="index.aspx">Ana Sayfa</a></li>
                        <li><a href="hakkımızda.aspx">Hkkımızda</a></li>
                        <li><a href="iletisim.aspx">İletişim</a></li>
                        <li><a href="login.aspx">Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>   
    <script src="js/wow.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
