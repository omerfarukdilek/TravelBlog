using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class MakaleSil : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Server=.;Database=geziblogum;Trusted_Connection=True;MultipleActiveResultSets=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string sql = "Delete From makale where makale=makid";

        baglanti.Close();
    }
}