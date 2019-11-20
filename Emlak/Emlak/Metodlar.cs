using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Fonksiyon
/// </summary>
public class Metodlar
{
    public Metodlar()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public SqlConnection baglan()
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=Emlak;Integrated Security=True");
        baglanti.Open();
        return (baglanti);
    }

    public SqlConnection close()
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MUHAMMED-PC;Initial Catalog=Emlak;Integrated Security=True");
        baglanti.Close();
        return (baglanti);
    }

    public int cmd(string sqlcumle)
    {
        SqlConnection baglan = this.baglan();
        SqlCommand sorgu = new SqlCommand(sqlcumle, baglan);
        int sonuc = 0;

        try
        {
            try
            {
                sonuc = sorgu.ExecuteNonQuery();
            }
            catch
            {
                return 0;
            }
        }
        catch (SqlException ex)
        {
            try
            {

                throw new Exception(ex.Message + " (" + sqlcumle + ")");

            }
            catch (SqlException ext)
            {
                sorgu.Dispose();
                baglan.Close();
                baglan.Dispose();
                return 0;
            }
        }
        sorgu.Dispose();
        baglan.Close();
        baglan.Dispose();
        return (sonuc);
    }

    public DataTable GetDataTable(string sql)
    {
        SqlConnection baglanti = this.baglan();
        SqlDataAdapter adapter = new SqlDataAdapter(sql, baglanti);
        DataTable dt = new DataTable();
        try
        {
            adapter.Fill(dt);
        }
        catch (SqlException ex)
        {
            throw new Exception(ex.Message + " (" + sql + ")");
        }
        adapter.Dispose();
        baglanti.Close();
        baglanti.Dispose();
        return dt;
    }





}