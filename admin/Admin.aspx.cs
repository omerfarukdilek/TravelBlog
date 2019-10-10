using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_Admin : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;MultipleActiveResultSets=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["giris"] == null)
        {
            Response.Write("<script language=javascript>alert('Giriş Yapamadınız');");
            Response.Write("location.href='admingiris.aspx'; </script>");
            Session["giris"] = 1;
        }

        int i = 0;

        if (!IsPostBack)
        {
            baglanti.Open();
            string sql = "Select * from kategori";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            SqlDataReader oku = komut.ExecuteReader();

            while (oku.Read())
            {
                DropDownList1.Items.Add(oku["kategori_adi"].ToString());
                DropDownList1.Items[i].Value = oku["kategori_id"].ToString();
                i++;
            }
       }
        baglanti.Close();
    }
  
    protected void Button1_Click(object sender, EventArgs e)
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

        baglanti.Open();
       
        string kulID = Request.QueryString["kulID"].ToString();

        string sql = "Insert into makale (makale_adi,makale,kategori_id,resim,mekan_adi,kullanici_id,makale_tarih,onay) values (@makalead,@makale,@kategori,@resim,@mekan,@kulid,@tarih,@onay)";
        SqlCommand komut = new SqlCommand(sql, baglanti);
        komut.Parameters.AddWithValue("@makalead", TextBox1.Text);
        komut.Parameters.AddWithValue("@makale", TextBox2.Text);
        komut.Parameters.AddWithValue("@mekan", TextBox3.Text);
        komut.Parameters.AddWithValue("@resim", txt_resim.FileName);
        komut.Parameters.AddWithValue("@kulid",kulID);
        komut.Parameters.AddWithValue("@kategori", Convert.ToInt32(DropDownList1.SelectedValue));// seçilen değerin id sini buluyor integer çeviriyor
        komut.Parameters.AddWithValue("@tarih", DateTime.Now);
        komut.Parameters.AddWithValue("@onay","1");
        komut.ExecuteNonQuery();
        
        Label2.Text=("Başarıyla Eklendi");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        baglanti.Close();
    }
 
    protected void gelen_kutusu_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
    }
    protected void kategori_ekle_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string sql = "INSERT INTO kategori (kategori_adi) values (@kat_adi)";
        SqlCommand komut = new SqlCommand(sql, baglanti);
        komut.Parameters.AddWithValue("@kat_adi", TextBox7.Text.ToString());
        komut.ExecuteNonQuery();

        baglanti.Close();
    }
 
    protected void makale_ekle_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void makale_duzenlesil_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void kullanici_duzenlesil_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void onaymakale_click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
    }
}