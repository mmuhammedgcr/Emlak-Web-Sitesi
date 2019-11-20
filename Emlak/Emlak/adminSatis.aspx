<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminSatis.aspx.cs" Inherits="Emlak.adminSatis" %>

<!doctype html>
<html lang="en">
<head>

	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assetsa/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>ALTIN EMLAK</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assetsa/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assetsa/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assetsa/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assetsa/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assetsa/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

teytryr

    <form id="form1" runat="server">



<div class="wrapper" >
    <div class="sidebar" data-color="grey" data-image="assetsa/img/sidebar-5.jpg" >

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a  class="simple-text">
                    İŞLEMLER
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="adminKonut.aspx">
                        <i class="pe-7s-graph"></i>
                        <p>Konut Listesi</p>
                    </a>
                </li>
                <li>
                    <a href="adminMusteri.aspx">
                        <i class="pe-7s-user"></i>
                        <p>Müşteri Listesi</p>
                    </a>
                </li>
                <li>
                    <a href="adminKiralama.aspx">
                        <i class="pe-7s-note2"></i>
                        <p>Kiralama İşlemleri</p>
                    </a>
                </li>
                <li class="active">
                    <a href="adminSatis.aspx">
                        <i class="pe-7s-science"></i>
                        <p>Satış İşlemleri</p>
                    </a>
                </li>
                
                <li>
                    <a href="adminFatura.aspx">
                        <i class="pe-7s-news-paper"></i>
                        <p>Fatura Bilgileri</p>
                    </a>
                </li>
                
                
            </ul>
    	</div>
    </div>

    <div class="main-panel"  >
        <nav class="navbar navbar-default navbar-fixed"  style="background-color:black">
            <div class="container-fluid" >
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#" style="color:gold">ALTIN EMLAK</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        
                     
                      
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                       
                       



                         <li >
                           <a class="nav-link" data-toggle="modal" data-target="#exampleModal"  style="color:white">
                             <i class="fa fa-fw fa-sign-out"></i>
                                
                             Çıkış Yap
                           </a>
                          </li>




                    </ul>
                </div>
            </div>
        </nav>

        <h2 style="text-align:center"><a style="color:maroon">SATIŞ İŞLEMİ</a></h2>
     
        <section id="about" class="section" style="background-color:burlywood; height: 315px;" >
           <div class="col-lg-12">
                <div class="form-group row">
                   
                    <div class="col-xs-6">
                        <label for="ex1">KONUT ID</label>
                        <br />
                        <asp:DropDownList ID="ddKonut" runat="server" DataSourceID="SqlDataSource1" DataTextField="KonutId" Height="37px" Width="520px" DataValueField="KonutId"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmlakConnectionString %>" SelectCommand="SELECT [KonutId] FROM [Konut]"></asp:SqlDataSource>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex2">TC</label><br />
                        <asp:DropDownList ID="ddTc" runat="server" DataSourceID="SqlDataSource2" DataTextField="MusteriTc" DataValueField="MusteriTc" Height="37px" Width="520px"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmlakConnectionString %>" SelectCommand="SELECT [MusteriTc] FROM [Musteri]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex1">Satış TARİHİ</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtTarih" runat="server" ErrorMessage="Boş Geçilmez" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtTarih" runat="server" CssClass="form-control" placeholder="Örnek = Murat"></asp:TextBox>
                    </div>
                      <div class="col-xs-6">
                        <label for="ex1">ÜCRET</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Geçilmez" ForeColor="Red" ControlToValidate="txtUcret"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtUcret" runat="server" CssClass="form-control" TextMode="Number" placeholder="Örnek = Kiraz Sk. Kadıköy/İstanbul"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                  
                    <div class="col-xs-6">
                        <br />
                        
                    </div>
                     <div class="col-xs-6">
                        
                        <asp:Button ID="btnSatis" runat="server" Text="SAT" ForeColor="White" Height="35" Width="90" BackColor="#009933" OnClick="btnSatis_Click" />
                    </div>
                </div>
            </div>

                      
        </section>

    </div>
</div>

     <!-- Logout Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ayrılmak mı İstiyosunuz?</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
           
            Geçerli oturumunuzu bitirmeye hazırsanız aşağıdaki "Çıkış Yap" ı seçin.
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">İptal</button>
            <a class="btn btn-primary" href="login.aspx">Çıkış Yap</a>
          </div>
        </div>
      </div>
    </div>


    </form>


</body>

      <script src="assetsa/vendor/jquery/jquery.min.js"></script>
    <script src="assetsa/vendor/popper/popper.min.js"></script>
    <script src="assetsa/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!--   Core JS Files   -->
    <script src="assetsa/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assetsa/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assetsa/js/bootstrap-checkbox-radio-switch.js"></script>

	<!--  Charts Plugin -->
	<script src="assetsa/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assetsa/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assetsa/js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assetsa/js/demo.js"></script>

	
</html>
