﻿using System;
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
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}