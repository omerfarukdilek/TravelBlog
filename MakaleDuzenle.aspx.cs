using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class MakaleDuzenle : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;MultipleActiveResultSets=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        baglanti.Open();
        string makID = Request.QueryString["mak"].ToString();
        string sql = "select * from makale where makale_id="+makID;
        SqlCommand komut = new SqlCommand(sql, baglanti);
        SqlDataReader oku = komut.ExecuteReader();
        while (oku.Read())
        {
            TextBox1.Text = oku["makale_adi"].ToString();
            TextBox2.Text = oku["mekan_adi"].ToString();
            TextBox3.Text = oku["makale_ozet"].ToString();
            TextBox4.Text = oku["makale"].ToString();
            
        }

        baglanti.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            baglanti.Open();
            string makID = Request.QueryString["mak"].ToString();
            string sql = "UPDATE makale SET makale_adi=@makaleadi,mekan_adi=@mekanadi,makale_ozet=@makaleozet,makale=@makale where makale_id=" + makID;
            SqlCommand komut = new SqlCommand(sql, baglanti);

            komut.Parameters.AddWithValue("@makaleadi", TextBox1.Text);
            komut.Parameters.AddWithValue("@mekanadi", TextBox2.Text);
            komut.Parameters.AddWithValue("@makaleozet", TextBox3.Text);
            komut.Parameters.AddWithValue("@makale", TextBox4.Text);

            komut.ExecuteNonQuery();
           
            baglanti.Close();
	    //Response.Write("<script language=Javascript>alert('Güncellendi.');</script>"); 
        }
    }
