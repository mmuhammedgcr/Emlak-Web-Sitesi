<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminKonut.aspx.cs" Inherits="Emlak.adminKonut" %>


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



    <form id="form1" runat="server">



<div class="wrapper" >
    <div class="sidebar" data-color="grey" data-image="assetsa/img/sidebar-5.jpg" >

    

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com"  class="simple-text">
                    İŞLEMLER
                </a>
            </div>

            <ul class="nav">
                <li class="active">
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

        <h2 style="text-align:center"><a style="color:maroon">KONUT İŞLEMLERİ</a>
        </h2>
         
     
        <section id="about" class="section" style="background-color:burlywood; height: 745px;" >
           <div class="col-lg-12">
                <div class="form-group row">
                   <div class="col-xs-4">
                        <label for="ex1">KONUT ID</label>
                        <asp:TextBox ID="txtKonutId" runat="server" CssClass="form-control" placeholder="Örnek = 100001"  MaxLength="11"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex1">EMLAK TİPİ</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="325px">
                   <asp:ListItem>Satılık</asp:ListItem>
                   <asp:ListItem>Kiralık</asp:ListItem>
                   </asp:DropDownList>
                    </div>
                     <div class="col-xs-4">
                        <label for="ex1">KONUT TÜRÜ</label>
                       <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="315px">
                        <asp:ListItem>Ev</asp:ListItem>
                        <asp:ListItem>İşyeri</asp:ListItem>
                        <asp:ListItem>Arsa</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group row">
                   <div class="col-xs-4">
                        <label for="ex1">İLAN TARİHİ</label>
                        <asp:TextBox ID="txtIlanTarihi" runat="server" CssClass="form-control" placeholder="Örnek = 2017-30-30"  MaxLength="25"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex1">ÜCRET</label>
                        <asp:TextBox ID="txtUcret" runat="server" CssClass="form-control" placeholder="Örnek = 250000"  MaxLength="15"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex1">METRE KARE</label>
                        <asp:TextBox ID="txtMetreKare" runat="server" CssClass="form-control" placeholder="Örnek = 150"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                   <div class="col-xs-4">
                        <label for="ex1">KİMDEN</label>
                        <asp:TextBox ID="txtKimden" runat="server" CssClass="form-control" placeholder="Örnek = Sahibinden"  MaxLength="18"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex1">ODA SAYISI</label>
                        <asp:TextBox ID="txtOdaSayisi" runat="server" CssClass="form-control" placeholder="Örnek =4+1"  MaxLength="5"></asp:TextBox>
                    </div>
                      <div class="col-xs-4">
                        <label for="ex1">ISITMA</label>
                        <asp:TextBox ID="txtIsitma" runat="server" CssClass="form-control" placeholder="Örnek = Doğalgaz"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                   
                    <div class="col-xs-4">
                        <label for="ex1">AİDAT</label>
                        
                        <asp:TextBox ID="txtAidat" runat="server" CssClass="form-control" placeholder="Örnek = 100" MaxLength="15"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex2">İMAR DURUMU</label>
                        <asp:TextBox ID="txtImarDurumu" runat="server" CssClass="form-control" placeholder="Örnek = Tarla"></asp:TextBox>
                    </div>
                     <div class="col-xs-4">
                        <label for="ex1">PARSEL NO</label>
                        <asp:TextBox ID="txtParselNo" runat="server" CssClass="form-control" placeholder="Örnek = 0000"  MaxLength="10"></asp:TextBox>
                    </div>
                </div>
               <div class="form-group row">
                   
                    <div class="col-xs-4">
                        <label for="ex1">TAPU DURUMU</label>
                        
                        <asp:TextBox ID="txtTapuDurumu" runat="server" CssClass="form-control" placeholder="Örnek =Müstakil "  MaxLength="25"></asp:TextBox>
                    </div>
                   
                    
                   
                    
                   
                    
                   
                </div>
               <h4> ----------------------------------------------------------------------ADRES BİLGİLERİ--------------------------------------------------------------------
                </h4>
               <div class="form-group row">
                   
                    <div class="col-xs-4">
                        <label for="ex1">SOKAK </label>
                        
                        <asp:TextBox ID="txtSokakNo" runat="server" CssClass="form-control" placeholder="Örnek = 0000"  MaxLength="10"></asp:TextBox>
                       
                    </div>
                    <div class="col-xs-4">
                        <label for="ex2">MAHALE </label>
                        <asp:TextBox ID="txtMahalleNo" runat="server" CssClass="form-control" MaxLength="10" placeholder="Örnek = Aslan Mahallesi"></asp:TextBox>
                    </div>
                     <div class="col-xs-4">
                        <label for="ex1">BİNA NO</label>
                        <asp:TextBox ID="txtBinaNo" runat="server" CssClass="form-control" placeholder="Örnek = 0000"  MaxLength="10"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                   
                    <div class="col-xs-4">
                        <label for="ex1">DAİRE NO</label>
                       
                        <asp:TextBox ID="txtDaireNo" runat="server" CssClass="form-control" placeholder="Örnek = 00"  MaxLength="15"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex2">İLÇE</label>
                        <asp:TextBox ID="txtIlce" runat="server" CssClass="form-control" placeholder="Örnek = Batıkent" MaxLength="30"></asp:TextBox>
                    </div>
                     <div class="col-xs-4">
                        <label for="ex1">İL</label>
                        <asp:TextBox ID="txtIl" runat="server" CssClass="form-control" placeholder="Örnek = Ankara" MaxLength="11"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                   
                    <div class="col-xs-4">
                        <label for="ex1">POSTA KODU</label>
                       
                        <asp:TextBox ID="txtPostaKodu" runat="server" CssClass="form-control" placeholder="Örnek = 0000"  MaxLength="11"></asp:TextBox>
                    </div>
                     <div class="col-xs-4">
                        <label for="ex1">RESİM 1</label>
                       
                         <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                   <div class="col-xs-6">
                       <br />
                     <asp:Button ID="btnEkle" runat="server" BackColor="#009900" Font-Bold="True" ForeColor="White" Height="50px" OnClick="btnEkle_Click" Text="KAYDET" Width="111px" />
                     <asp:Button ID="btnSil" runat="server" BackColor="Maroon" Font-Bold="True" ForeColor="White" Height="50px" OnClick="btnSil_Click" Text="SİL" Width="111px" />
                     <asp:Button ID="btnGuncelle" runat="server" BackColor="#000099" Font-Bold="True" ForeColor="Silver" Height="50px" OnClick="btnGuncelle_Click" Text="GÜNCELLE" Width="111px" />
                  </div>
                   
                </div>
                
               
            </div>

                      
        </section>

       
    </div>


    


   </div>
        

    
         <h2 style="text-align:center"><a style="color:maroon">KONUT BİLGİLERİ</a>
        </h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  DataKeyNames="KonutId" DataSourceID="SqlDataSource1" Font-Bold="True"  GridLines="Vertical" BorderColor="#999999" BorderStyle="Solid"  ForeColor="Black" BackColor="White" CaptionAlign="Left" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="KonutId" HeaderText="KonutId" ReadOnly="True" SortExpression="KonutId" />
                <asp:BoundField DataField="EmlakTipi" HeaderText="EmlakTipi" SortExpression="EmlakTipi" />
                <asp:BoundField DataField="KonutTuru" HeaderText="KonutTuru" SortExpression="KonutTuru" />
                <asp:BoundField DataField="IlanTarihi" HeaderText="IlanTarihi" SortExpression="IlanTarihi" />
                <asp:BoundField DataField="Ucret" HeaderText="Ucret" SortExpression="Ucret" />
                <asp:BoundField DataField="MetreKare" HeaderText="MetreKare" SortExpression="MetreKare" />
                <asp:BoundField DataField="Kimden" HeaderText="Kimden" SortExpression="Kimden" />
                <asp:BoundField DataField="OdaSayisi" HeaderText="OdaSayisi" SortExpression="OdaSayisi" />
                <asp:BoundField DataField="Isıtma" HeaderText="Isıtma" SortExpression="Isıtma" />
                <asp:BoundField DataField="Aidat" HeaderText="Aidat" SortExpression="Aidat" />
                <asp:BoundField DataField="ImarDurumu" HeaderText="ImarDurumu" SortExpression="ImarDurumu" />
                <asp:BoundField DataField="ParselNo" HeaderText="ParselNo" SortExpression="ParselNo" />
                <asp:BoundField DataField="TapuDurumu" HeaderText="TapuDurumu" SortExpression="TapuDurumu" />
                <asp:BoundField DataField="SokakNo" HeaderText="SokakNo" SortExpression="SokakNo" />
                <asp:BoundField DataField="MahalleNo" HeaderText="MahalleNo" SortExpression="MahalleNo" />
                <asp:BoundField DataField="BinaNo" HeaderText="BinaNo" SortExpression="BinaNo" />
                <asp:BoundField DataField="DaireNo" HeaderText="DaireNo" SortExpression="DaireNo" />
                <asp:BoundField DataField="Ilce" HeaderText="Ilce" SortExpression="Ilce" />
                <asp:BoundField DataField="Il" HeaderText="Il" SortExpression="Il" />
                <asp:BoundField DataField="PostaKodu" HeaderText="PostaKodu" SortExpression="PostaKodu" />
               
                <asp:ButtonField CommandName="Select" Text="Seçiniz" ButtonType="Image" ImageUrl="~/images/selecticon.png" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Maroon" Font-Bold="True" ForeColor="White" Height="35px" HorizontalAlign="Left" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmlakConnectionString %>" SelectCommand="SELECT Konut.KonutId, Konut.EmlakTipi, Konut.KonutTuru, Konut.IlanTarihi, Konut.Ucret, Konut.MetreKare, Konut.Kimden, Konut.OdaSayisi, Konut.Isıtma, Konut.Aidat, Konut.ImarDurumu, Konut.ParselNo, Konut.TapuDurumu, KonutAdres.SokakNo, KonutAdres.MahalleNo, KonutAdres.BinaNo, KonutAdres.DaireNo, KonutAdres.Ilce, KonutAdres.Il, KonutAdres.PostaKodu FROM Konut INNER JOIN KonutAdres ON Konut.KonutId = KonutAdres.KonutId AND Konut.KonutId = KonutAdres.KonutId"></asp:SqlDataSource>
        <br />
        

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