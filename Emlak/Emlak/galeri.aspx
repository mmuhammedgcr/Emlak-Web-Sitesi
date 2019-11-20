<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="galeri.aspx.cs" Inherits="Emlak.galeri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="files/fancy.css" rel="stylesheet" type="text/css" media="screen" />
    <script type="text/javascript" src="files/jquery-1.2.3.pack.js"></script>
    <script type="text/javascript" src="files/jquery.fancybox-1.0.0.js"></script>
    <script type="text/javascript" src="files/jquery.pngFix.pack.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#test a").fancybox({
                'hideOnContentClick': true
            });
            $("#test2 a").fancybox({
                'overlayShow': true,
                'zoomSpeedIn': 0,
                'zoomSpeedOut': 0
            });
            $("#test3 a").fancybox({
                'overlayShow': true
            });
            $("#test4 a").fancybox({
                'overlayShow': true,

            });
            $("#test5 a").fancybox({
                'overlayShow': true,

            });
            $("#test6 a").fancybox({
                'overlayShow': true,

            });
            $("#test7 a").fancybox({
                'overlayShow': true,

            });
        });
    </script>




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
<body>

    <header id="header">
        <nav class="navbar navbar-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.aspx">
                        <img src="images/baslik3.png" /></a>
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
                        <li class="active"><a href="galeri.aspx">Galeri</a></li>
                        <li><a href="iletisim.aspx">İLETİŞİM</a></li>
                        <li><a href="login.aspx">
                            <img src="images/png/login.PNG" />LOGİN</a></li>
                    </ul>
                </div>
            </div>
            <!--/.container-->
        </nav>
        <!--/nav-->

    </header>
    
    <section>
        <div class="center wow fadeInDown">
        
        <h1 style="color: black">Fotoğraflar</h1>
    </div>
        <form >
            <div class="container text-center">
                <p id="test3">
                
                 
                 <a rel="test3" href="images2/emlak1.jpg"><img src="images2/thumbs/kucuk1.jpg" alt=""/></a>
                 <a rel="test3" href="images2/emlak2.jpg"><img src="images2/thumbs/kucuk2.jpg" alt=""/></a>
                 <a rel="test3" href="images2/emlak3.jpg"><img src="images2/thumbs/kucuk3.jpg" alt=""/></a>
                 <a rel="test3" href="images2/emlak4.jpg"><img src="images2/thumbs/kucuk4.jpg" alt=""/></a>
                <a rel="test3" href="images2/emlak5.jpg"><img src="images2/thumbs/kucuk5.jpg" alt=""/></a>

             </p>
             
             <p id="test5">
                
                 
                
                
                 <a rel="test3" href="images2/emlak6.png"><img src="images2/thumbs/kucuk6.jpg" alt=""/></a>
                 <a rel="test3" href="images2/emlak7.jpg"><img src="images2/thumbs/kucuk7.jpg" alt=""/></a>
                 <a rel="test3" href="images2/emlak8.jpg"><img src="images2/thumbs/kucuk8.jpg" alt=""/></a>
                 <a rel="test3" href="images2/emlak9.jpg"><img src="images2/thumbs/kucuk9.jpg" alt=""/></a>
              


           </p>
              
           </p>
            

            </div>
        </form>

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
        </div>
        <!--/.container-->
    </div>
    <!--/.top-bar-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    Tüm Haklar Saklıdır.
                    <div class="credits">
                        Mavi Emlak © 2016
                    </div>
                    <div class="credits">
                        <h3 style="text-align: right">Yaz Dönemi Staj Projesi...</h3>
                    </div>
                </div>

                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Ana Sayfa</a></li>
                        <li><a href="#">Hkkımızda</a></li>
                        <li><a href="#">İletişim</a></li>
                        <li><a href="#">Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!--/#footer-->



</body>
</html>