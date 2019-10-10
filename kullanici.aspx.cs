using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class kullanici : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;MultipleActiveResultSets=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = "hoşgeldin   " + Session["oku"].ToString();
        string kulID = Request.QueryString["kulID"].ToString();
        if (!IsPostBack)
        {
            baglanti.Open();
            string sql = "select * from makale where kullanici_id=" + kulID;
            SqlCommand komut = new SqlCommand(sql, baglanti);
            SqlDataReader oku = komut.ExecuteReader();

            while (oku.Read())
            {
                Literal1.Text += "<h4>" + oku["makale_adi"] + "</h4>";
                Literal1.Text += oku["makale"].ToString() + "<br/>";
                Literal1.Text += oku["mekan_adi"].ToString();
                Literal1.Text += oku["makale_ozet"].ToString() + "<br/><br/>";
                Literal1.Text += "<img src=foto/" + oku["resim"].ToString() + " width=400 height=400> <br/>";
                Literal1.Text += "Ekleme Tarihi" + oku["makale_tarih"].ToString();
            }

            baglanti.Close();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        if (MultiView1.ActiveViewIndex == 0)
        {
            baglanti.Open();
            string sql2 = "select * from kategori";
            SqlCommand komut2 = new SqlCommand(sql2, baglanti);
            SqlDataReader oku2 = komut2.ExecuteReader();
            while (oku2.Read())
            {
                DropDownList1.Items.Add(oku2["kategori_adi"].ToString());
            }

            baglanti.Close();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string uzanti, resim = "-";
        if (txt_resim.HasFile == true)
        {
            uzanti = System.IO.Path.GetExtension(txt_resim.FileName);
            if (uzanti == ".jpg" || uzanti == ".jpeg" || uzanti == ".png")
            {
                txt_resim.SaveAs(Server.MapPath("~/foto/") + txt_resim.FileName);
                resim = txt_resim.FileName.ToString();
            }
        }
        string kulID = Request.QueryString["kulID"].ToString();
        baglanti.Open();

        string sql = "Insert into makale (makale_adi,makale,makale_ozet,kategori_id,resim,mekan_adi,makale_tarih,kullanici_id,onay) values (@makalead,@makale,@ozet,@kategori,@resim,@mekan,@tarih,@kulid,@onay)";
        SqlCommand komut = new SqlCommand(sql, baglanti);
        komut.Parameters.AddWithValue("@makalead", TextBox1.Text);
        komut.Parameters.AddWithValue("@makale", TextBox3.Text);
        komut.Parameters.AddWithValue("@ozet", TextBox4.Text);
        komut.Parameters.AddWithValue("@mekan", TextBox2.Text);
        komut.Parameters.AddWithValue("@resim", txt_resim.FileName);
        komut.Parameters.AddWithValue("@tarih", DateTime.Now);
        komut.Parameters.AddWithValue("@kategori", (DropDownList1.SelectedIndex));
        komut.Parameters.AddWithValue("@kulid", kulID);
        komut.Parameters.AddWithValue("@onay", "0");
        komut.ExecuteNonQuery();

        baglanti.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;

        if (!IsPostBack)
        {
            baglanti.Open();
            string kulID = Request.QueryString["kulID"].ToString();
            string sql = "select * from makale where kullanici_id=" + kulID;
            SqlCommand komut = new SqlCommand(sql, baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            Literal2.Text += "<ol class=solKategori>";
            while (oku.Read())
            {
                Literal2.Text += "<a href=MakaleDuzenle.aspx?mak=" + oku["makale_id"].ToString() + "><h3>" + oku["makale_adi"].ToString() + " </h3></a>";
            }

            Literal2.Text += "</ol>";

            baglanti.Close();
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;

       


        
    }
    

}
