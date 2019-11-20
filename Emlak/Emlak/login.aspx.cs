using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Emlak
{
    public partial class login : System.Web.UI.Page
    {




        protected void Button1_Click1(object sender, EventArgs e)
        {

            SqlConnection baglanti = new SqlConnection("data source = MUHAMMED-PC; initial catalog =Emlak; integrated security = True; ");
            baglanti.Open();
            string ad = txtKullaniciAdi.Text;
            string sifre = txtKullaniciSife.Text;


            SqlCommand cmd = new SqlCommand("select * from Kullanicilar where KullaniciAdi='" + ad + "' and KullaniciSifre='" + sifre + "'", baglanti);
            SqlDataReader oku = cmd.ExecuteReader();

            if (oku.Read())
            {
                Session.Add("Kullanici", ad);


                Response.Redirect("adminKonut.aspx");

            }
            else
            {
                Response.Write("<script>alert('Hatalı giriş yaptınız. Lütfen tekrar deneyiniz...')</script>");
                txtKullaniciAdi.Text = "";
                txtKullaniciSife.Text = "";

            }
        }
    }
}