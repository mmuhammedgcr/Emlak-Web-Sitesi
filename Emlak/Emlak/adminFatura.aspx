<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminFatura.aspx.cs" Inherits="Emlak.WebForm1" %>
<!doctype html>
<html lang="en">
<head>


	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assetsa/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>ALTIN EMALK</title>

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
                <li>
                    <a href="adminSatis.aspx">
                        <i class="pe-7s-science"></i>
                        <p>Satış İşlemleri</p>
                    </a>
                </li>
                
                <li class="active">
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

        
     
        <section id="about" class="section"  height: 200px;" >
            <h3 style="text-align:center"><a style="color:maroon">KİRA FATURA BİLGİLERİ</a></h3>
           <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="KiraId" DataSourceID="SqlDataSourceKira" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="700px">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <Columns>
                   <asp:BoundField DataField="KiraId" HeaderText="KiraId" ReadOnly="True" SortExpression="KiraId" />
                   <asp:BoundField DataField="MusteriTc" HeaderText="MusteriTc" SortExpression="MusteriTc" />
                   <asp:BoundField DataField="Ucret" HeaderText="Ucret" SortExpression="Ucret" />
                   <asp:BoundField DataField="FaturaTarihi" HeaderText="FaturaTarihi" SortExpression="FaturaTarihi" />
               </Columns>
               <EditRowStyle BackColor="#999999" />
               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#E9E7E2" />
               <SortedAscendingHeaderStyle BackColor="#506C8C" />
               <SortedDescendingCellStyle BackColor="#FFFDF8" />
               <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
                      
            <asp:SqlDataSource ID="SqlDataSourceKira" runat="server" ConnectionString="<%$ ConnectionStrings:EmlakConnectionString %>" SelectCommand="SELECT * FROM [KiraFatura]"></asp:SqlDataSource>
           
                      
        </section>
        <br />
        <br />


         <section id="about" class="section"  height:200px;" >
             <h3 style="text-align:center"><a style="color:maroon">SATIŞ FATURA BİLGİLERİ</a></h3>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SatisId" DataSourceID="SqlDataSourceSatis" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="700px">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                     <asp:BoundField DataField="SatisId" HeaderText="SatisId" ReadOnly="True" SortExpression="SatisId" />
                     <asp:BoundField DataField="MusteriTc" HeaderText="MusteriTc" SortExpression="MusteriTc" />
                     <asp:BoundField DataField="Ucret" HeaderText="Ucret" SortExpression="Ucret" />
                     <asp:BoundField DataField="FaturaTarihi" HeaderText="FaturaTarihi" SortExpression="FaturaTarihi" />
                 </Columns>
                 <EditRowStyle BackColor="#999999" />
                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                 <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#E9E7E2" />
                 <SortedAscendingHeaderStyle BackColor="#506C8C" />
                 <SortedDescendingCellStyle BackColor="#FFFDF8" />
                 <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSourceSatis" runat="server" ConnectionString="<%$ ConnectionStrings:EmlakConnectionString %>" SelectCommand="SELECT * FROM [SatisFatura]"></asp:SqlDataSource>
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

