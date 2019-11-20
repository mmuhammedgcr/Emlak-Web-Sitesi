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
    public partial class adminSatis : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=Emlak;Integrated Security=True");
        SqlCommand komut;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       public void Temizle()
        {
            txtTarih.Text = "";
            txtUcret.Text = "";

        }

    

        protected void btnSatis_Click(object sender, EventArgs e)
        {
            try
            {


                komut = new SqlCommand("SatisEkle", baglanti);
                komut.CommandType = CommandType.StoredProcedure;


                SqlParameter KONUT = komut.Parameters.Add("@KonutId", SqlDbType.NVarChar, 50);
                KONUT.Value = ddKonut.SelectedItem.Text;
                SqlParameter TC = komut.Parameters.Add("@MusteriTc", SqlDbType.NVarChar, 50);
                TC.Value = ddTc.SelectedItem.Text;
                SqlParameter TARIH = komut.Parameters.Add("@SatisTarihi", SqlDbType.NVarChar, 50);
                TARIH.Value = txtTarih.Text;
                SqlParameter UCRET = komut.Parameters.Add("@Ucret", SqlDbType.VarChar, 50);
                UCRET.Value = txtUcret.Text;

                baglanti.Open();
                komut.ExecuteScalar();


                Response.Redirect("adminSatis.aspx");

                Temizle();
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Satılmadı...')</script>");
                Temizle();
            }
        }
    }
}