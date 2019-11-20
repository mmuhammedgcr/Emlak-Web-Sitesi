<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Emlak.index" %>


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
                        <li ><a href="index.aspx">ANA SAYFA</a></li>
                        <li><a href="hakkımızda.aspx">HAKKIMIZDA</a></li>
                         <li class="active">
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
                        <li><a href="iletisim.aspx">İLETİŞİM</a></li> 
                        <li><a href="login.aspx"><img src="images/png/login.PNG"/>LOGİN</a></li>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->
	
	<div class="slider">
		<div class="container">
			<div id="about-slider">
				<div id="carousel-slider" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
				  	<ol class="carousel-indicators visible-xs">
					    <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					    <li data-target="#carousel-slider" data-slide-to="1"></li>
					    <li data-target="#carousel-slider" data-slide-to="2"></li>
				  	</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img src="images2/slider_one1.jpg" class="img-responsive" alt=""> 
					   </div>
					   <div class="item">
							<img src="images2/slider_one2.jpg" class="img-responsive" alt=""> 
					   </div> 
					   <div class="item">
							<img src="images2/slider_one3.jpg" class="img-responsive" alt=""> 
					   </div> 
					</div>
					
					<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
						<i class="fa fa-angle-left"></i> 
					</a>
					
					<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
						<i class="fa fa-angle-right"></i> 
					</a>
				</div> <!--/#carousel-slider-->
			</div><!--/#about-slider-->
		</div>
	</div>
      <section id="recent-works">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2 style="color:red" >Öne Çıkan İlanlar</h2>
                <p class="lead">En uygun fiyatlara kiralık ve satılık daire,arsa ve iş yerleri göçer emlakta.. Müşterilerimizi İşimizde İlk Sıraya Koyar,Ve Her Zaman Bir Alternatifi Olduğunu Asla Unutmayarak Hizmet Vermekteyiz.Tüm Hizmetlerimizde Ve İlişkilerimizde Açıklık,Dürüstlük,Ve Doğrudan İletişime Önem Veririz.Bir Sonraki Gayrimenkul Alışverişinizde Yine Evkur Emlak’ı Seçmenizi Amaçlarız.
 </p>
            </div>

            <div class="row">
                <div class="col-xs-5 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/OneCıkanIlanlar/onecikan1.jpg" alt="">
                        <p><H2 style="color:blue" class="text-center">SATILIK DAİRE <br/>125.000 TL</H2></p>
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#" style="color:red">Satılık Daire</a> </h3>
                                <p>Cadde life de hayat başlıyor. Şimdiden yerinizi ayırın.</p>
                                <p>125.000 TL</p>
                                <a class="preview" href="images/OneCıkanIlanlar/onecikan1.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i>Göster</a>
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-5 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/OneCıkanIlanlar/onecikan2.jpg" alt="">
                         <p><H2 style="color:blue" class="text-center">SATILIK İŞ YERİ <br/>250.000 TL</H2></p>
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#" style="color:red">Satılık İşyeri</a> </h3>
                                <p>Bilkentin tam ortasında. Şimdiden yerinizi ayırın.</p>
                                <p>250.000 TL</p>
                                <a class="preview" href="images/OneCıkanIlanlar/onecikan2.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> Göster</a>
                            </div> 
                        </div>
                    </div>
                </div> 

                <div class="col-xs-5 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/OneCıkanIlanlar/onecikan3.jpg" alt="">
                         <p><H2 style="color:blue" class="text-center">KİRALIK EV <br/>1200 TL</H2></p>
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#" style="color:red">Kiralık Ev</a> </h3>
                                <p>Duyan duymayan kalmasın dedik. En uygun fiyatlarla ÇANKAYA da</p>
                                <p>1.200 TL</p>
                                <a class="preview" href="images/OneCıkanIlanlar/onecikan3.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> Göster</a>
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-5 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/OneCıkanIlanlar/onecikan4.jpg" alt="">
                         <p><H2 style="color:blue" class="text-center">SATILIK VİLLA <br/>1.200.000 TL</H2></p>
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#" style="color:red">Satılık Villa</a> </h3>
                                <p>Ümitköy de bulunmaz fırsat...</p>
                                <p>1.200.000 TL</p>
                                <a class="preview" href="images/OneCıkanIlanlar/onecikan4.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> Göster</a>
                            </div> 
                        </div>
                    </div>
                </div>   
                    <h6 style="color:white">,</h6>
                </div>
                
                <div class="col-xs-5 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/OneCıkanIlanlar/onecikan5.jpg" alt="">
                         <p><H2 style="color:blue" class="text-center">SATILIK ARSA <br/>350.000 TL</H2></p>
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#" style="color:red">Satılık Arsa</a> </h3>
                                <p>Batıkent de 100 dönümlük arsa</p>
                                <p>350.000 TL</p>
                                <a class="preview" href="images/OneCıkanIlanlar/onecikan5.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> Göster</a>
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-5 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/OneCıkanIlanlar/onecikan6.jpg" alt="">
                         <p><H2 style="color:blue" class="text-center">KİRALIK İŞ YERİ<br/>1.500 TL</H2></p>
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#" style="color:red">Kiralık İşyeri</a> </h3>
                                <p>Ümitköy merkez de 350 m2 lik İşyeri</p>
                                <p>1.500 TL</p>
                                <a class="preview" href="images/OneCıkanIlanlar/onecikan6.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> Göster</a>
                            </div> 
                        </div>
                    </div>
                </div> 

                <div class="col-xs-5 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/OneCıkanIlanlar/onecikan7.jpg" alt="">
                         <p><H2 style="color:blue" class="text-center">KİRALIK DAİRE <br/>1.300 TL</H2></p>
                    
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#" style="color:red">Kiralık Daire</a> </h3>
                                <p>Cadde life de hayat başlıyor. Şimdiden yerinizi ayırın. Bu fırsat kaçmaz</p>
                                <p>1.300 TL</p>
                                <a class="preview" href="images/OneCıkanIlanlar/onecikan7.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> Göster</a>
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-5 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/OneCıkanIlanlar/onecikan8.jpg" alt="">
                         <p><H2 style="color:blue" class="text-center">SATILIK DAİRE <br/>200.000 TL</H2></p>
                        <div class="overlay">
                            <div class="recent-work-inner">
                               <h3><a href="#" style="color:red">Satılık Daire</a> </h3>
                                <p>Ataoğlu inşaatta kaçınılmaz son fiyatlar...</p>
                                <p>200.000 TL</p>
                                <a class="preview" href="images/OneCıkanIlanlar/onecikan8.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i> Göster</a>
                            </div> 
                        </div>
                    </div>
                </div>   
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#recent-works-->	
	 <section id="feature" style="background-color:lightgray" >
        <div class="container">
           <div class="center wow fadeInDown">
                <h2 style="color:darkgoldenrod">Biz en iyi fiyat ile en iyi emlak garantisi veriyoruz..</h2>
                <p class="lead">Websitem emlak piyasa enstrumanlarını ve değişimlerini sürekli takip eden, Doğru Fiyat - Doğru Yatırım mantığı ile müşterilerini kısa sürede hedeflerine ulaşmalarını dolayısıyla müşteri memnuniyetini sağlamayı ve sürekli kılmayı en ön planda tutan bir gayrimenkul danışmanlık firmasıdır. 

Websitem Emlak herhangi bir gayrimenkul alımınızda sizlere ihtiyacınız ile ilgili alternatifler sunarak alanlarında gerçek değerlerle mukayeseler yapma imkanı verir. Websitem Emlak herhangi bir gayrimenkul satımında, gayrimenkulü doğru tanımlayarak az zamanda talep eden çok kişiye bu gayrimenkulü tanıtma görevini üstlenir. </p>
        

		
				
				
				<div class="row">		
					<div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1000ms">
							<div class="joomla-skill">                                   
								<p><em>15%</em></p>
								<p>FAİZ</p>
							</div>
						</div>
					</div>
					
					 <div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
							<div class="html-skill">                                  
								<p><em>60%</em></p>
								<p>DEPOZİTO</p>
							</div>
						</div>
					</div>
					
					<div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
							<div class="css-skill">                                    
								<p><em>70%</em></p>
								<p>SATIŞ OPSİYONU</p>
							</div>
						</div>
					</div>
					
					 <div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
							<div class="wp-skill">
								<p><em>90%</em></p>
								<p>KOMİSYON</p>                                     
							</div>
						</div>
					</div>					
				</div>	
            </div>
			</div>


         <!-- Sayac-->
<div align="center"><script language="Javascript" src="http://sa.sayaclar.com/c/s4.php?a=lixuikl&s=1a8"></script>
    <a href="http://sayaclar.com" title="Sayaçlar"><h2 style="color:brown">TOPLAM ZİYARETÇİ</h2></a>

</div>
<!-- Sayac -->


        </div><!--/.container-->
    </section><!--/#feature-->
	
	 
	
   
	
	
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
                        <li><a href="#">Ana Sayfa</a></li>
                        <li><a href="#">Hkkımızda</a></li>
                        <li><a href="#">İletişim</a></li>
                        <li><a href="#">Login</a></li>
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