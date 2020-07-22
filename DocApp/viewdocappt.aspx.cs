using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace DocApp
{
    public partial class viewdocappt : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B98JRKF\SQLEXPRESS;Initial Catalog=Sinfo;Integrated Security=True;Pooling=False");


        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            
            SqlCommand cmd = new SqlCommand("select patientName,time,date from appt where demail=@de", con);
            cmd.Parameters.AddWithValue("@de", Session["demail"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            
            /*SqlCommand cmd = new SqlCommand("select patientName,time,date from appt where demail=@de", con);
            cmd.Parameters.AddWithValue("@de", Session["demail"].ToString());
           // cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            string temp = "";
            while (dr.Read())
            {
                
            }
            */
            con.Close();
        }
    }
}