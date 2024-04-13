using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemektarifiproje
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel5.Visible = false;
            // Onaylı Yorumlar
            SqlCommand komut = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", 1);
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            bgl.baglanti().Close();

            // Onaysız Yorumlar
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", 0);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

            bgl.baglanti().Close();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }
    }
}