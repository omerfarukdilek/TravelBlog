using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;MultipleActiveResultSets=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)  //sayfa her açıldığında kategori literal i yüklenmesin diye
        {
            baglanti.Open();

            string sql = "select * from kategori";  //Sql sorgusu ile veritabanından kategori tablosunu çekiyoruz 
            SqlCommand komut = new SqlCommand(sql, baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            lt_kategori.Text += "<ol class=solKategori>";  //Literal ile çektiğimiz kategorilere solKategori css'ini tanımlıyoruz

            while (oku.Read())
            {
                lt_kategori.Text += "<li><a class=kategoriLink href=MakaleDetay.aspx?mak=" + oku["kategori_id"].ToString() + ">" + oku["kategori_adi"].ToString() + "</a></li>";  
                //literal kategoriye tıklandığında class kategori link olacak.Kategoriye tıklandığında katid makaledetay sayfasına gidiyor
            }


            string sql2 = "Select * from makale where onay=1  ORDER BY makale_tarih DESC";  //Makale onayı 1 ise tarihe göre son yüklenen en üstte yayınlıyoruz

            SqlCommand komut2 = new SqlCommand(sql2, baglanti);
            SqlDataReader oku2 = komut2.ExecuteReader();

            while (oku2.Read())
            { 
                string kulno = oku2["kullanici_id"].ToString(); // kullanıcının makele bilgilerini okutuyoruz
                lt_makale.Text += "<h3>" + oku2["makale_adi"].ToString() + "</h3>";
                lt_makale.Text += "<img src=foto/" + oku2["resim"].ToString() + " width=400 height=400> <br/>";
                lt_makale.Text += oku2["makale_ozet"].ToString();
                lt_makale.Text += "<a href=MakaleDetay.aspx?mak=" + oku2["makale_id"].ToString() + "><h3> MakaleninDevamı...</h3></a>";


                string sql3 = "Select * from kullanicilar where kullanici_id=" + kulno; 

                SqlCommand komut3 = new SqlCommand(sql3, baglanti);
                SqlDataReader oku3 = komut3.ExecuteReader();

                while (oku3.Read())
                {
                    lt_makale.Text += "<h4> Gezgin:<float:right>"+oku3["adsoyad"].ToString() + "</h4><hr>";  //Paylaşım yapan kullanıcının adsoyadını getirtiyoz
                }
            }
            lt_kategori.Text += "</ol>";
            baglanti.Close();
        }
    }
}