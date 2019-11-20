using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emlak
{
    public partial class uyeol : System.Web.UI.Page
    {
        Metodlar metod = new Metodlar();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kullanici = txtKullanici.Text;
            string sifre = txtSifre.Text;
            string yetki = ddlYetki.Text;
            metod.cmd("insert into Kullanicilar(KullaniciAdi,KullaniciSifre,YetkiTuru) values('" + kullanici + "','" + sifre + "','" + yetki + "')");

            Response.Write("<script>alert('Üye işlemi başarılı bir şekilde gerçekleştirildi...')</script>");

            txtKullanici.Text = "";
            txtSifre.Text = "";
            txtSifreTekrar.Text = "";
        }
    }
}