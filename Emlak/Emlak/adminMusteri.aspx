<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminMusteri.aspx.cs" Inherits="Emlak.adminMusteri" %>

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
                <li class="active">
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

       <h3 style="text-align:center"><a style="color:maroon">MÜŞTERİ İŞLEMLERİ</a></h3>
     
        <section id="about" class="section" style="background-color:burlywood; height: 415px;" >
           <div class="col-lg-12">
                <div class="form-group row">
                   
                    <div class="col-xs-6">
                        <label for="ex1">TC  
                        
                       
                        </label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Geçilmez" ControlToValidate="txtTc" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtTC" runat="server" CssClass="form-control" placeholder="Örnek = 12345678901" TextMode="Number" MaxLength="11"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex2">KONUT ID</label><br />
                        <asp:DropDownList ID="ddKonut" runat="server" DataSourceID="SqlDataSource4" DataTextField="KonutId" DataValueField="KonutId" Height="35px" Width="550px"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:EmlakConnectionString %>" SelectCommand="SELECT [KonutId] FROM [Konut]"></asp:SqlDataSource>
                       
                    </div>
                </div>
                <div class="form-group row">
                   <div class="col-xs-6">
                        <label for="ex1">AD</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Geçilmez" ControlToValidate="txtAd" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Örnek = 05056809977"  MaxLength="11"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex1">SOYAD</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtSoyad" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtSoyad" runat="server" CssClass="form-control" placeholder="Örnek = 05056809977"  MaxLength="11"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex1">TELEFON</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtTel" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtTel" runat="server" CssClass="form-control" placeholder="Örnek = Kiraz Sk. Kadıköy/İstanbul" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex1">ŞEHİR</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtSehir" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtSehir" runat="server" CssClass="form-control" placeholder="Örnek = 123456"></asp:TextBox>
                    </div>
                </div>
               <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex1">ÜLKE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtUlke" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtUlke" runat="server" CssClass="form-control" placeholder="Örnek = Kiraz Sk. Kadıköy/İstanbul"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex1">ADRES</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtAdres" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" placeholder="Örnek = 123456"></asp:TextBox>
                    </div>
                </div>
               <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex1">POSTA KODU</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtPosta" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtPosta" runat="server" CssClass="form-control" placeholder="Örnek = Kiraz Sk. Kadıköy/İstanbul" Font-Bold="True"></asp:TextBox>
                    </div>
                   <div class="col-xs-6" >
                       <br />
                       <asp:Button ID="Button1" runat="server" BackColor="#009933" ForeColor="White" Height="50px"  Width="111px" OnClick="Button1_Click" Text="KAYDET" />
                       <asp:Button ID="Button2" runat="server" BackColor="#CC0000" ForeColor="White" Height="50px" Text="SİL" Width="111px" OnClick="Button2_Click1" />
                       <asp:Button ID="Button3" runat="server" BackColor="#3333CC" ForeColor="White" Height="50px" Text="GÜNCELLE" Width="111px" OnClick="Button3_Click" />
                       </div>
                   
                   
                   
                </div>
            </div>

                      
        </section>     

        <br />
          <section>
        <h3 style="text-align:center"><a style="color:saddlebrown">MÜŞTERİ LİSTESİ</a>
           
               </h3>
        <br />

        

              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MusteriTc" Width="920px" DataSourceID="SqlDataSource3" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BorderColor="Black" BorderStyle="Ridge">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <Columns>
                      <asp:BoundField DataField="MusteriTc" HeaderText="MusteriTc" ReadOnly="True" SortExpression="MusteriTc" />
                      <asp:BoundField DataField="KonutId" HeaderText="KonutId" SortExpression="KonutId" />
                      <asp:BoundField DataField="MusteriAd" HeaderText="MusteriAd" SortExpression="MusteriAd" />
                      <asp:BoundField DataField="MusteriSoyad" HeaderText="MusteriSoyad" SortExpression="MusteriSoyad" />
                      <asp:BoundField DataField="MusteriTel" HeaderText="MusteriTel" SortExpression="MusteriTel" />
                      <asp:BoundField DataField="Sehir" HeaderText="Sehir" SortExpression="Sehir" />
                      <asp:BoundField DataField="Ulke" HeaderText="Ulke" SortExpression="Ulke" />
                      <asp:BoundField DataField="Adres" HeaderText="Adres" SortExpression="Adres" />
                      <asp:BoundField DataField="PostaKodu" HeaderText="PostaKodu" SortExpression="PostaKodu" />
                      <asp:ButtonField CommandName="Select" HeaderText="İŞLEMLER" ShowHeader="True" Text="Seçiniz" ButtonType="Image" ImageUrl="~/images/selecticon.png" />
                  </Columns>
                  <EditRowStyle BackColor="#999999" />
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="Maroon" BorderColor="#333300" Font-Bold="True" ForeColor="White" Height="38px" HorizontalAlign="Center" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#CCCCCC" BorderColor="#660033" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Left" VerticalAlign="Top" Width="900px" Wrap="False" />
                  <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#E9E7E2" />
                  <SortedAscendingHeaderStyle BackColor="#506C8C" />
                  <SortedDescendingCellStyle BackColor="#FFFDF8" />
                  <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
              </asp:GridView>


           
                   
               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EmlakConnectionString %>" SelectCommand="SELECT Musteri.MusteriTc, Musteri.KonutId, Musteri.MusteriAd, Musteri.MusteriSoyad, Musteri.MusteriTel, MusteriAdres.Sehir, MusteriAdres.Ulke, MusteriAdres.Adres, MusteriAdres.PostaKodu FROM Musteri INNER JOIN MusteriAdres ON Musteri.MusteriTc = MusteriAdres.MusteriTc AND Musteri.MusteriTc = MusteriAdres.MusteriTc"></asp:SqlDataSource>


           
                   
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmlakConnectionString %>" DeleteCommand="MusteriSil" SelectCommand="SELECT Musteri.*, MusteriAdres.* FROM Musteri INNER JOIN MusteriAdres ON Musteri.MusteriTc = MusteriAdres.MusteriTc" DeleteCommandType="StoredProcedure">
                   <DeleteParameters>
                       <asp:Parameter Name="tc" Type="Int32" />
                   </DeleteParameters>
               </asp:SqlDataSource>


           
                   
        </section>
        <br />
        <br />

    </div>

</div>
        
        
         
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
