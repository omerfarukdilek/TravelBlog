using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class kayitol : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;MultipleActiveResultSets=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_kayit_Click(object sender, EventArgs e)
    {
        Session["oku2"] = txt_adsoyad.Text;
        baglanti.Open();

        string sql2="select * from kullanicilar where kullanici_adi='"+txt_kullanici.Text+"'";
        SqlCommand komut2=new SqlCommand(sql2,baglanti);
        SqlDataReader oku = komut2.ExecuteReader();

        if (oku.Read())
        {
            lblbilgi.Text = "kullanici adi var";
        }
        else
        {
            string sql = "INSERT INTO kullanicilar (adsoyad,kullanici_adi,sifre,email,durum) values (@ad,@kuladi,@sifre,@email,@durum)";
            SqlCommand komut = new SqlCommand(sql, baglanti);

            komut.Parameters.AddWithValue("@ad", txt_adsoyad.Text);
            komut.Parameters.AddWithValue("@kuladi", txt_kullanici.Text);
            komut.Parameters.AddWithValue("@sifre", txt_sifre.Text);
            komut.Parameters.AddWithValue("@email", txt_mail.Text);
            komut.Parameters.AddWithValue("@durum", "0");

            txt_adsoyad.Text = "";
            txt_kullanici.Text = "";
            txt_sifre.Text = "";
            txt_mail.Text = "";

            komut.ExecuteNonQuery();

            lblbilgi.Text = "Kayıt Başarılı";
            Response.Redirect("Default.aspx");

            baglanti.Close();
        }
    }
}