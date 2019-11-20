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
    public partial class adminKonut : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=Emlak;Integrated Security=True");
        SqlCommand komut;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {

            komut = new SqlCommand("KonutEkle", baglanti);
            komut.CommandType = CommandType.StoredProcedure;

            SqlParameter ID = komut.Parameters.Add("@KonutId", SqlDbType.NVarChar, 50);
            ID.Value = txtKonutId.Text;
            SqlParameter EMLAKTIP = komut.Parameters.Add("@EmlakTipi", SqlDbType.NVarChar, 50);
            EMLAKTIP.Value = DropDownList1.SelectedItem.Text;
            SqlParameter KONUTTUR = komut.Parameters.Add("@KonutTuru", SqlDbType.NVarChar, 50);
            KONUTTUR.Value = DropDownList2.SelectedItem.Text;
            SqlParameter TARIH= komut.Parameters.Add("@IlanTarihi", SqlDbType.NVarChar, 50);
            TARIH.Value = txtIlanTarihi.Text;
            SqlParameter UCRET = komut.Parameters.Add("@Ucret", SqlDbType.VarChar, 50);
            UCRET.Value = txtUcret.Text;
            SqlParameter METREKARE = komut.Parameters.Add("@MetreKare", SqlDbType.VarChar, 50);
            METREKARE.Value = txtMetreKare.Text;
            SqlParameter KIMDEN = komut.Parameters.Add("@Kimden", SqlDbType.NVarChar, 50);
            KIMDEN.Value = txtKimden.Text;
            SqlParameter ODASAYI = komut.Parameters.Add("@OdaSayisi", SqlDbType.NVarChar, 50);
            ODASAYI.Value = txtOdaSayisi.Text;
            SqlParameter ISITMA = komut.Parameters.Add("@Isıtma", SqlDbType.NVarChar, 50);
            ISITMA.Value = txtIsitma.Text;
            SqlParameter AIDAT = komut.Parameters.Add("@Aidat", SqlDbType.NVarChar, 50);
            AIDAT.Value = txtAidat.Text;
            SqlParameter IMAR = komut.Parameters.Add("@ImarDurumu", SqlDbType.NVarChar, 50);
            IMAR.Value = txtImarDurumu.Text;
            SqlParameter PARSEL = komut.Parameters.Add("@ParselNo", SqlDbType.NVarChar, 50);
            PARSEL.Value = txtParselNo.Text;
            SqlParameter TAPU = komut.Parameters.Add("@TapuDurumu", SqlDbType.VarChar, 50);
            TAPU.Value = txtTapuDurumu.Text;
            SqlParameter SOKAK= komut.Parameters.Add("@SokakNo", SqlDbType.VarChar, 50);
            SOKAK.Value = txtSokakNo.Text;
            SqlParameter MAHALLE = komut.Parameters.Add("@MahalleNo", SqlDbType.NVarChar, 50);
            MAHALLE.Value = txtMahalleNo.Text;
            SqlParameter BINA = komut.Parameters.Add("@BinaNo", SqlDbType.NVarChar, 50);
            BINA.Value = txtBinaNo.Text;
            SqlParameter DAIRE = komut.Parameters.Add("@DaireNo", SqlDbType.VarChar, 50);
            DAIRE.Value = txtDaireNo.Text;
            SqlParameter ILCE = komut.Parameters.Add("@Ilce", SqlDbType.VarChar, 50);
            ILCE.Value = txtIlce.Text;
            SqlParameter IL = komut.Parameters.Add("@Il", SqlDbType.NVarChar, 50);
            IL.Value = txtIl.Text;
            SqlParameter POSTA = komut.Parameters.Add("@PostaKodu", SqlDbType.NVarChar, 50);
            POSTA.Value = txtPostaKodu.Text;

            baglanti.Open();
            komut.ExecuteScalar();


            Response.Redirect("adminKonut.aspx");

            Temizle();

        }
        public void Temizle()
        {
            txtKonutId.Text = "";
            txtAidat.Text = "";
            txtBinaNo.Text = "";
            txtDaireNo.Text = "";
            txtIl.Text = "";
            txtIlanTarihi.Text = "";
            txtIlce.Text = "";
            txtImarDurumu.Text = "";
            txtIsitma.Text = "";
            txtKimden.Text = "";
            txtMahalleNo.Text = "";
            txtMetreKare.Text = "";
            txtOdaSayisi.Text = "";
            txtParselNo.Text = "";
            txtPostaKodu.Text = "";
            txtSokakNo.Text = "";
            txtTapuDurumu.Text = "";
            txtUcret.Text = "";
            
            
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            try
            {

                string sorgu = "DELETE from Konut where KonutId=@id";
                baglanti.Open();
                komut = new SqlCommand(sorgu, baglanti);
                komut.Parameters.AddWithValue("@id", txtKonutId.Text);
                komut.ExecuteNonQuery();
                baglanti.Close();
                Temizle();
                Response.Write("<script>alert('Kayıt Silindi...')</script>");

            }
            catch (Exception)
            {
                Response.Write("<script>alert('Kayıt Silinemedi...')</script>");
            }
            Response.Redirect("adminKonut.aspx");

        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            try
            {
                komut = new SqlCommand("KonutGuncelle", baglanti);
                komut.CommandText ="KonutGuncelle";
                komut.CommandType = CommandType.StoredProcedure;

                komut.Parameters.AddWithValue("@KonutId", txtKonutId.Text);
                komut.Parameters.AddWithValue("@EmlakTipi",DropDownList1.SelectedItem.Text);
                komut.Parameters.AddWithValue("@KonutTuru",DropDownList2.SelectedItem.Text);
                komut.Parameters.AddWithValue("@IlanTarihi",txtIlanTarihi.Text);
                komut.Parameters.AddWithValue("@Ucret",txtUcret.Text);
                komut.Parameters.AddWithValue("@MetreKare",txtMetreKare.Text);
                komut.Parameters.AddWithValue("@Kimden",txtKimden.Text);
                komut.Parameters.AddWithValue("@OdaSayisi",txtOdaSayisi.Text);
                komut.Parameters.AddWithValue("@Isıtma",txtIsitma.Text);
                komut.Parameters.AddWithValue("@Aidat",txtAidat.Text);
                komut.Parameters.AddWithValue("@ImarDurumu",txtImarDurumu.Text);
                komut.Parameters.AddWithValue("@ParselNo",txtParselNo.Text);
                komut.Parameters.AddWithValue("@TapuDurumu",txtTapuDurumu.Text);
                komut.Parameters.AddWithValue("@SokakNo",txtSokakNo.Text);
                komut.Parameters.AddWithValue("@MahalleNo",txtMahalleNo.Text);
                komut.Parameters.AddWithValue("@BinaNo",txtBinaNo.Text);
                komut.Parameters.AddWithValue("@DaireNo",txtDaireNo.Text);
                komut.Parameters.AddWithValue("@Ilce",txtIlce.Text);
                komut.Parameters.AddWithValue("@Il",txtIl.Text);
                komut.Parameters.AddWithValue("@PostaKodu",txtPostaKodu.Text);
                komut.Connection = baglanti;
                baglanti.Open();

                komut.ExecuteNonQuery();

                Response.Write("<script>alert('Kayıt Güncellendi...')</script>");
                Temizle();
                Response.Redirect("adminKonut.aspx");

            }
            catch (Exception)
            {
                Response.Write("<script>alert('Kayıt Güncellenemedi...')</script>");
            }
            Response.Redirect("adminKonut.aspx");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int seciliSatirIndex = GridView1.SelectedIndex;
                GridViewRow satir = GridView1.Rows[seciliSatirIndex];

                Temizle();

                txtKonutId.Text = satir.Cells[0].Text;
                DropDownList1.SelectedItem.Text= HttpUtility.HtmlDecode(satir.Cells[1].Text.ToString());
                DropDownList2.SelectedItem.Text= HttpUtility.HtmlDecode(satir.Cells[2].Text.ToString());
                txtIlanTarihi.Text = HttpUtility.HtmlDecode(satir.Cells[3].Text.ToString());
                txtUcret.Text = HttpUtility.HtmlDecode(satir.Cells[4].Text.ToString());
                txtMetreKare.Text = HttpUtility.HtmlDecode(satir.Cells[5].Text.ToString());
                txtKimden.Text = HttpUtility.HtmlDecode(satir.Cells[6].Text.ToString());
                txtOdaSayisi.Text = HttpUtility.HtmlDecode(satir.Cells[7].Text.ToString());
                txtIsitma.Text = HttpUtility.HtmlDecode(satir.Cells[8].Text.ToString());
                txtAidat.Text = HttpUtility.HtmlDecode(satir.Cells[9].Text.ToString());
                txtImarDurumu.Text = HttpUtility.HtmlDecode(satir.Cells[10].Text.ToString());
                txtParselNo.Text = HttpUtility.HtmlDecode(satir.Cells[11].Text.ToString());
                txtTapuDurumu.Text = HttpUtility.HtmlDecode(satir.Cells[12].Text.ToString());
                txtSokakNo.Text = HttpUtility.HtmlDecode(satir.Cells[13].Text.ToString());
                txtMahalleNo.Text = HttpUtility.HtmlDecode(satir.Cells[14].Text.ToString());
                txtBinaNo.Text = HttpUtility.HtmlDecode(satir.Cells[15].Text.ToString());
                txtDaireNo.Text = HttpUtility.HtmlDecode(satir.Cells[16].Text.ToString());
                txtIlce.Text = HttpUtility.HtmlDecode(satir.Cells[17].Text.ToString());
                txtIl.Text = HttpUtility.HtmlDecode(satir.Cells[18].Text.ToString());               
                txtPostaKodu.Text = HttpUtility.HtmlDecode(satir.Cells[19].Text.ToString());
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Bir Hata İle Karşılaşıldı...')</script>");

            }

        }
    }
}