using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace yemektarifiproje
{
    public partial class YemekDüzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand(" Select * From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
                if (Page.IsPostBack == false)
                {
                    //Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("Select*From Tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "KateoriAd";
                    DropDownList1.DataValueField = "Kategoriid";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4 where Yemekid=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}