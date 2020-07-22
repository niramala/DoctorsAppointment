using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
namespace DocApp
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B98JRKF\SQLEXPRESS;Initial Catalog=Sinfo;Integrated Security=True;Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void clear()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
           
                string sql = "insert into patient(name,email,phone,password,address) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox7.Text +"')";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Write("<script>alert('Successfully Registered')</script>");
                //Response.Redirect("patientlogin.aspx");
            }
            
        protected void Button2_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}