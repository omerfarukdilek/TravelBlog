using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class ara : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;MultipleActiveResultSets=True");
   string aranankelime = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string aranankelime = Request.QueryString["aranankelime"];
        if (!IsPostBack)
        {
            baglanti.Open();
            string sql = "Select * from makale where makale_adi like '%" + aranankelime + "%'";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            SqlDataReader oku = komut.ExecuteReader();

            while (oku.Read())
            {
                Literal1.Text += oku["makale_adi"]; 
            }

            baglanti.Close();
        }
    }
}