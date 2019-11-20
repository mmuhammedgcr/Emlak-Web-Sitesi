<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyeol.aspx.cs" Inherits="Emlak.uyeol" %>


<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>ÜYE OL</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets4/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets4/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets4/css/form-elements.css">
        <link rel="stylesheet" href="assets4/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets4/ico/favicon.png">
        <link rel="aapple-touch-icon-precomposed" sizes="144x144" href="assets4/ico/apple-touch-icon-144-precomposed.png">
        <link rel="aapple-touch-icon-precomposed" sizes="114x114" href="assets4/ico/apple-touch-icon-114-precomposed.png">
        <link rel="aapple-touch-icon-precomposed" sizes="72x72" href="assets4/ico/apple-touch-icon-72-precomposed.png">
        <link rel="aapple-touch-icon-precomposed" href="assets4/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body style="background-image:url(images/uyeolarka.jpg);">

        <form id="form1" runat="server">

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>ÜYE OL</strong></h1>
                            <div class="description">
                            	
                            </div>
                        </div>
                    </div>
                      <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top"  style="background-color:black">
                        		<div class="form-top-left">
                        			<h3 style="color: #FFFFFF; font-weight: bolder">Sitemize Üye Olun</h3>
                            		<p style="color: #FFFFFF; font-weight: bolder">Gerekli Bilgileri Doldurunuz:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom" aria-atomic="True">
			                    	<div class="form-group" style="color:black; font-weight: bolder; width: 555px;">Kullanıcı Adı:
			                    		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKullanici" ErrorMessage="Boş Geçilemez!" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtKullanici" runat="server" placeholder="örn: abc123..." Height="50px" Width="505px"></asp:TextBox>

			                    	</div>
			                        <div class="form-group" style="color:black; font-weight: bolder;">Şifre:&nbsp;&nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Geçilemez!" ControlToValidate="txtSifre" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtSifre" TextMode="Password" runat="server" placeholder="örn:1234..." Height="50px" Width="505px"></asp:TextBox>

			                        </div>
                                     <div class="form-group" style="color:black; font-weight: bolder;">Şifre Tekrar:&nbsp;&nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Geçilemez!" ControlToValidate="txtSifreTekrar" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSifre" ControlToValidate="txtSifreTekrar" ErrorMessage="Şifreler aynı değil!!!" ForeColor="Red" style="z-index: 1; left: 136px; top: 335px; position: absolute; width: 161px"></asp:CompareValidator>
&nbsp;<asp:TextBox ID="txtSifreTekrar" TextMode="Password" runat="server" placeholder="örn:1234..." Height="50px" Width="505px"></asp:TextBox>

			                        </div>
                                    <div class="form-group" style="color:black; font-weight: bolder;">Yetki Türü:
			                        <asp:DropDownList ID="ddlYetki" runat="server" AutoPostBack="True" BackColor="#F1F4F8" ForeColor="#333300" Height="50px" Width="505px">
                                        <asp:ListItem>Personel</asp:ListItem>
                                </asp:DropDownList>
                                        </div>
                                
			                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
			                    <br />
		                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Width="76px" Text="KAYDOL" BackColor="#009900" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                  
		                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    
&nbsp;
                                    <br />
		                            <br />
                              
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	
                        	<div class="social-login-buttons">
	                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        	
                                <a class="btn btn-link-1 btn-link-1-google-plus" href="login.aspx">
                                Çıkış
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-twitter" href="#">
	                        		<i class="fa fa-twitter"></i> Twitter
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-facebook" href="#">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
	                        	
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="assets4/js/jquery-1.11.1.min.js"></script>
        <script src="assets4/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets4/js/jquery.backstretch.min.js"></script>
        <script src="assets4/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

        </form>

    </body>

</html>