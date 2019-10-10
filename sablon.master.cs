using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class sablon : System.Web.UI.MasterPage
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;MultipleActiveResultSets=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn_ara_Click(object sender, EventArgs e)
    {
        Response.Redirect("ara.aspx?aranankelime=" + txt_ara.Text);
    }
    protected void btn_giris_Click(object sender, EventArgs e)
    {
            Session["oku"] = txt_kuladi.Text;
            baglanti.Open();
            string sql = "select * from kullanicilar where kullanici_adi='"+txt_kuladi.Text+"'and sifre='"+txt_sifre.Text+"'and durum=0";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            SqlDataReader oku = komut.ExecuteReader();

            while (oku.Read())
            {
                Response.Redirect("kullanici.aspx?kulID=" + oku["kullanici_id"].ToString());
            }

        baglanti.Close(); 
    }
}