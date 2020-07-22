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
    public partial class cancelappt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B98JRKF\SQLEXPRESS;Initial Catalog=Sinfo;Integrated Security=True;Pooling=False");
            con.Open();
            //string str = "select name,specification,address,phone from doctor";
            SqlCommand cmd = new SqlCommand("select patientName,time,date from appt where pemail=@de", con);
            cmd.Parameters.AddWithValue("@de", Session["pemail"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B98JRKF\SQLEXPRESS;Initial Catalog=Sinfo;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from appt where pemail=@pe", con);
            cmd.Parameters.AddWithValue("@pe", Session["pemail"].ToString());
            cmd.ExecuteNonQuery();
            
            Response.Redirect("<script>alert('Appointment Cancelled Successfully')</script>");
            Response.Redirect("pathome.aspx");
            con.Close();
        }
    }
}