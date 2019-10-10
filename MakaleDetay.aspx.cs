using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class MakaleDetay : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;MultipleActiveResultSets=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        baglanti.Open();

        string makaleID = Request.QueryString["mak"];
        string sql = "Select * from makale where makale_id="+makaleID+"and onay=1";

        SqlCommand komut = new SqlCommand(sql, baglanti);
        SqlDataReader oku = komut.ExecuteReader();

        while (oku.Read())
        {
            lt_makale.Text += "<h3>" + oku["makale_adi"].ToString() + "</h3>";
            lt_makale.Text += oku["makale"].ToString() + "<br/><br/>";
            lt_makale.Text += "<img src=foto/" + oku["resim"].ToString() + " width=400 height=400> <br/>";
            lt_makale.Text += "Ekleme Tarihi" + oku["makale_tarih"].ToString()+"<hr>";
        }
        string katID = Request.QueryString["mak"];
        string sql2 = "Select * from makale where kategori_id=" + katID+"and onay=1";

        SqlCommand komut2 = new SqlCommand(sql2, baglanti);
        SqlDataReader oku2 = komut2.ExecuteReader();

        while (oku2.Read())
        {
            lt_makale.Text += "<h3>" + oku2["makale_adi"].ToString() + "</h3>";
            lt_makale.Text += oku2["makale"].ToString() + "<br/><br/>";
            lt_makale.Text += "<img src=foto/" + oku2["resim"].ToString() + " width=400 height=400> <br/>";
            lt_makale.Text += "Ekleme Tarihi" + oku2["makale_tarih"].ToString() + "<hr>";
        }




        baglanti.Close();
    }
}