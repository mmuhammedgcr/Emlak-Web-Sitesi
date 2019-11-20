using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Emlak
{
    public partial class adminMusteri : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=Emlak;Integrated Security=True");
        SqlCommand komut;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //MusteriListele();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            komut = new SqlCommand("MusteriEkle", baglanti);
            komut.CommandType = CommandType.StoredProcedure;


            SqlParameter TC = komut.Parameters.Add("@musteritc", SqlDbType.NVarChar, 50);
            TC.Value = txtTC.Text;
            SqlParameter KONUT = komut.Parameters.Add("@konutid", SqlDbType.NVarChar, 50);
            KONUT.Value = ddKonut.SelectedItem.Text;
            //ddKonut.Items.Add(KONUT.Value.ToString());
            SqlParameter AD = komut.Parameters.Add("@ad", SqlDbType.NVarChar, 50);
            AD.Value = txtAd.Text;
            SqlParameter SOYAD = komut.Parameters.Add("@soyad", SqlDbType.NVarChar, 50);
            SOYAD.Value = txtSoyad.Text;
            SqlParameter TELEFON = komut.Parameters.Add("@telefon", SqlDbType.NVarChar, 50);
            TELEFON.Value = txtTel.Text;
            SqlParameter SEHIR = komut.Parameters.Add("@sehir", SqlDbType.VarChar, 50);
            SEHIR.Value = txtSehir.Text;
            SqlParameter ULKE = komut.Parameters.Add("@ulke", SqlDbType.VarChar, 50);
            ULKE.Value = txtUlke.Text;
            SqlParameter ADRES = komut.Parameters.Add("@adres", SqlDbType.NVarChar, 50);
            ADRES.Value = txtAdres.Text;
            SqlParameter POSTA = komut.Parameters.Add("@postakodu", SqlDbType.NVarChar, 50);
            POSTA.Value = txtPosta.Text;


            baglanti.Open();
            komut.ExecuteScalar();


            Response.Redirect("adminMusteri.aspx");

            Temizle();

        }
        public void Temizle()
        {
            txtTC.Text = "";
            txtAd.Text = "";
            txtSoyad.Text = "";
            txtTel.Text = "";
            txtSehir.Text = "";
            txtUlke.Text = "";
            txtAdres.Text = "";
            txtPosta.Text = "";

        }

        //public void MusteriListele()
        //{
        //    DataSet ds = new DataSet();
        //    SqlDataAdapter adapter = new SqlDataAdapter("SELECT Musteri.*, MusteriAdres.* FROM Musteri INNER JOIN MusteriAdres ON Musteri.MusteriTc = MusteriAdres.MusteriTc", baglanti);
        //    adapter.Fill(ds);
        //    baglanti.Close();

        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();

        //}

      

        protected void Button2_Click1(object sender, EventArgs e)
        {
            try
            {

                string sorgu = "DELETE from Musteri where MusteriTc=@tc";
                baglanti.Open();
                komut = new SqlCommand(sorgu, baglanti);
                komut.Parameters.AddWithValue("@tc", txtTC.Text);
                komut.ExecuteNonQuery();
                baglanti.Close();
                Temizle();
                Response.Write("<script>alert('Kayıt Silindi...')</script>");

            }
            catch (Exception)
            {
                Response.Write("<script>alert('Kayıt Silinemedi...')</script>");
            }
            Response.Redirect("adminMusteri.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                komut = new SqlCommand("MusteriGuncelle", baglanti);
                komut.CommandText = "MusteriGuncelle";
                komut.CommandType = CommandType.StoredProcedure;

                komut.Parameters.AddWithValue("@musteritc", txtTC.Text);
                komut.Parameters.AddWithValue("@konutid", ddKonut.SelectedItem.Text);
                komut.Parameters.AddWithValue("@ad", txtAd.Text);
                komut.Parameters.AddWithValue("@soyad", txtSoyad.Text);
                komut.Parameters.AddWithValue("@telefon", txtTel.Text);
                komut.Parameters.AddWithValue("@sehir", txtSehir.Text);
                komut.Parameters.AddWithValue("@ulke", txtUlke.Text);
                komut.Parameters.AddWithValue("@adres", txtAdres.Text);
                komut.Parameters.AddWithValue("@postakodu", txtPosta.Text);
                komut.Connection = baglanti;
                baglanti.Open();

                komut.ExecuteNonQuery();
 
                Response.Write("<script>alert('Kayıt Güncellendi...')</script>");
                Temizle();
                Response.Redirect("adminMusteri.aspx");

            }
            catch (Exception)
            {
                Response.Write("<script>alert('Kayıt Güncellenemedi...')</script>");
            }
            Response.Redirect("adminMusteri.aspx");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            try
            {
                int seciliSatirIndex = GridView1.SelectedIndex;
                GridViewRow satir = GridView1.Rows[seciliSatirIndex];

                Temizle();

                txtTC.Text = satir.Cells[0].Text;
                ddKonut.SelectedItem.Text= HttpUtility.HtmlDecode(satir.Cells[1].Text.ToString());
                txtAd.Text = HttpUtility.HtmlDecode(satir.Cells[2].Text.ToString());
                txtSoyad.Text = HttpUtility.HtmlDecode(satir.Cells[3].Text.ToString());
                txtTel.Text = HttpUtility.HtmlDecode(satir.Cells[4].Text.ToString());
                txtSehir.Text = HttpUtility.HtmlDecode(satir.Cells[5].Text.ToString());
                txtUlke.Text = HttpUtility.HtmlDecode(satir.Cells[6].Text.ToString());
                txtAdres.Text = HttpUtility.HtmlDecode(satir.Cells[7].Text.ToString());
                txtPosta.Text = HttpUtility.HtmlDecode(satir.Cells[8].Text.ToString());

            }
            catch (Exception)
            {
                Response.Write("<script>alert('Bir Hata İle Karşılaşıldı...')</script>");

            }
        }
    }
}