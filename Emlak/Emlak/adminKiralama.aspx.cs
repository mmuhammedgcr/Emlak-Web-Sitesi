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
    public partial class adminKiralama : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=Emlak;Integrated Security=True");
        SqlCommand komut;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKirala_Click(object sender, EventArgs e)
        {
            try
            {


                komut = new SqlCommand("KiraEkle", baglanti);
                komut.CommandType = CommandType.StoredProcedure;


                SqlParameter KONUT = komut.Parameters.Add("@KonutId", SqlDbType.NVarChar, 50);
                KONUT.Value = ddKonut.SelectedItem.Text;
                SqlParameter TC = komut.Parameters.Add("@MusteriTc", SqlDbType.NVarChar, 50);
                TC.Value = ddTc.SelectedItem.Text;
                SqlParameter TARIH = komut.Parameters.Add("@AlisTarihi", SqlDbType.NVarChar, 50);
                TARIH.Value = txtTarih.Text;
                SqlParameter DEPOZİTO = komut.Parameters.Add("@Depozito", SqlDbType.VarChar, 50);
                DEPOZİTO.Value = txtDepozito.Text;
                SqlParameter UCRET = komut.Parameters.Add("@Ucret", SqlDbType.VarChar, 50);
                UCRET.Value = txtUcret.Text;

                baglanti.Open();
                komut.ExecuteScalar();


                Response.Redirect("adminKiralama.aspx");

                Temizle();
            }
            catch(Exception)
            {
                Response.Write("<script>alert('Kiralanamadı...')</script>");
                Temizle();
            }

        }

        public void Temizle()
        {
            txtUcret.Text = "";
            txtTarih.Text = "";
            txtDepozito.Text = "";

        }
    }
}