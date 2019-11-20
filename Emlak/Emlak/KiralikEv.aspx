<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KiralikEv.aspx.cs" Inherits="Emlak.KiralıkEv" %>


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




    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

   

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />


    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

  </head>

  <body>
    <form runat="server">
    <!-- Navigation -->
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
                        <li class="active"><a href="index.aspx">ANA SAYFA</a></li>
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
                        <li><a href="iletisim.aspx">İLETİŞİM</a></li> 
                        <li><a href="login.aspx"><img src="images/png/login.PNG"/>LOGİN</a></li>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
     

     

		  <div class="row">
			<asp:Repeater ID="Repeater3" runat="server">
                   <ItemTemplate>
                        <div class="col-lg-4 col-sm-6 portfolio-item">
                          <div class="card h-100">
                              
                               <div  class="carousel slide" data-ride="carousel">
                                        <ol class="carousel-indicators">
                                          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                        </ol>
                                        <div class="carousel-inner" role="listbox">
                                          <div class="carousel-item active">
                                              <img class="card-img-top" src="images/ev/<%#Eval("resim1") %>" alt="">
                                          </div>
                                          <div class="carousel-item">
                                                <img class="card-img-top" src="images/ev/<%#Eval("resim2") %>"  alt="">
                                          </div>
                                          <div class="carousel-item">
                                              <img class="card-img-top" src="images/ev/<%#Eval("resim3") %>"  alt="">
                                          </div>
                                        </div>
                                      </div>                  
                            <div class="card-body">
                              <h4 class="card-title">
                                <a href="#"><%#Eval("EmlakTipi") %> <%#Eval("KonutTuru") %></a>
                              </h4>
                               <p class="card-text"> <h4 href style="color:red">İlan Tarihi:</h4><h4><%#Eval("IlanTarihi") %></h4></p>
                                 <p class="card-text"><a href style="color:red">Ucret:</a> <%#Eval("Ucret") %></p>
                                 <p class="card-text"><a href style="color:red">Metre Kare:</a> <%#Eval("MetreKare") %></p>
                                 <p class="card-text"><a href style="color:red">Kimden:</a> <%#Eval("Kimden") %></p>
                                <a href style="color:red">Oda Sayısı:</a> <p class="card-text"> <%#Eval("OdaSayisi") %></p>
                               <a href style="color:red">Isıtma:</a>  <p class="card-text"><%#Eval("Isıtma") %></p>
                                <a href style="color:red">Aidat:</a> <p class="card-text"><%#Eval("Aidat") %></p>
                            </div>
                          </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
		  </div>

      <!-- Pagination -->
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>


          <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>   
    <script src="js/wow.min.js"></script>
	<script src="js/main.js"></script>
      </form>
  </body>

</html>
