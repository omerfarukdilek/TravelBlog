using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class iletisim : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;");

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_gonder_Click(object sender, EventArgs e)
    {
        if (txt_ad.Text !="" && txt_mail.Text != "" && txt_mesaj.Text != "")
        {
            baglanti.Open();
            string sql = "Insert into iletisim (gonderen_adi,gonderen_mail,gonderen_mesaj)   values(@ad,@mail,@mesaj)";
            SqlCommand komut = new SqlCommand(sql, baglanti);

            komut.Parameters.AddWithValue("@ad", txt_ad.Text);
            komut.Parameters.AddWithValue("@mail", txt_mail.Text);
            komut.Parameters.AddWithValue("@mesaj", txt_mesaj.Text);
            komut.ExecuteNonQuery();

            Label1.Text = "Mesajınız Yöneticiye İletilmiştir.";
        }
        else
            Label1.Text = "Boş Alanları Doldurunuz !";
        baglanti.Close();
    }
}