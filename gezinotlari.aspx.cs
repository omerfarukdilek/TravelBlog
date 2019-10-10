using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class gezinotlari : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;MultipleActiveResultSets=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            baglanti.Open();

            string sql ="select * from kategori";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            lt_kategori.Text += "<ol class=solKategori>";
            
            while (oku.Read())
            {
                lt_kategori.Text += "<li><a class=kategoriLink href=MakaleDetay.aspx?mak=" + oku["kategori_id"].ToString() + ">" + oku["kategori_adi"].ToString() + "</a></li>";
                
            }
            lt_kategori.Text += "</ol>"; 
        }
        baglanti.Close();
        }
    }