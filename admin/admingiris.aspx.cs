using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;MultipleActiveResultSets=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            baglanti.Open();
                string sql="select * from kullanicilar where kullanici_adi='"+txt_kullanici.Text+"' and sifre='"+txt_sifre.Text+"'and durum=1";
                SqlCommand komut=new SqlCommand(sql,baglanti);
                SqlDataReader oku=komut.ExecuteReader();
       
            while(oku.Read())
            {
                Response.Redirect("Admin.aspx?kulID=" + oku["kullanici_id"].ToString());
            }

        baglanti.Close();
             }
        else
           Response.Write("bilgilerinizi kontrol ediniz");
    }
}