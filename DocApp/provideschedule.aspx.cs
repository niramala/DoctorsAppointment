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
    public partial class provideschedule : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B98JRKF\SQLEXPRESS;Initial Catalog=Sinfo;Integrated Security=True;Pooling=False");
        SqlDataReader dr;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            
           

        }

        
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;

        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string dm = Session["demail"].ToString();
           // Response.Write("<script>alert(dm)</script>");
            string str = "insert into sche(date,time,status,demail) values('" + TextBox1.Text + "','" + TextBox2.Text + "','unbook','" + TextBox3.Text + "')";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Successfully Entered')</script>");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
        }
    }
}