﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace DocApp
{
    public partial class apptview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B98JRKF\SQLEXPRESS;Initial Catalog=Sinfo;Integrated Security=True;Pooling=False");
            con.Open();
            //string str = "select name,specification,address,phone from doctor";
            SqlCommand cmd = new SqlCommand("select patientName,time,date from appt", con);
           // cmd.Parameters.AddWithValue("@de", Session["pemail"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

        }

    }
}