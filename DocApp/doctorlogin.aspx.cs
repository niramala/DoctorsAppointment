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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B98JRKF\SQLEXPRESS;Initial Catalog=Sinfo;Integrated Security=True;Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void clear()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
        }   

        protected void Button2_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text;
            string pwd = TextBox2.Text;
            con.Open();
            
            string str="select email,password from doctor where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(str,con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count>0)
            {
                Session["demail"] = TextBox1.Text;
                string s= "select did from doctor where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                SqlCommand cm= new SqlCommand(s, con);
                SqlDataReader dr = cm.ExecuteReader();
                dr.Read();
                Session["did"] = dr[0].ToString();
                Response.Redirect("dochome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login Failed')</script>");
                clear();
            }

            con.Close();
        }
    }
}