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
    public partial class SatilikEv : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=Emlak;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from konut", baglanti);
            DataTable dt = new DataTable();
            da.Fill(dt);

            Repeater3.DataSource = dt;
            Repeater3.DataBind();
        }


        
        
    }
}