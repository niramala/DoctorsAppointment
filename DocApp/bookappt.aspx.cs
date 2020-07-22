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
    public partial class bookappt : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B98JRKF\SQLEXPRESS;Initial Catalog=Sinfo;Integrated Security=True;Pooling=False");
        

        protected void Page_Load(object sender, EventArgs e)
        {
            /*con.Open();
            SqlCommand cmd = new SqlCommand("select name,email from doctor", con);
            DropDownList4.DataSource = cmd.ExecuteReader();
            
            DropDownList4.DataTextField = "name";
            DropDownList4.DataValueField = "email";
            DropDownList4.DataBind();
             * */

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "-1")
            {
                Response.Write("<script>alert('Please select an item')</script>");
            }
           
            con.Open();
            /*string str = "insert into appointment(patient,time,date,specification) values(@nam,@tim,@dat,@spe)";

                */
            SqlCommand cmd = new SqlCommand("select name,email from doctor where specification=@spe", con);
            cmd.Parameters.AddWithValue("@spe", DropDownList1.SelectedItem.Value);
            DropDownList2.DataSource = cmd.ExecuteReader();
            DropDownList2.DataTextField = "name";
            DropDownList2.DataValueField = "email";
            DropDownList2.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "-1")
            {
                Response.Write("<script>alert('Please select an item')</script>");
            }
            else
            {
                string str = "unbook";
                Session["str"] = str;
                con.Open();
                SqlCommand cmd = new SqlCommand("select time from sche where demail=@mal and date=@dat and status=@st", con);
                cmd.Parameters.AddWithValue("@mal", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@dat", TextBox3.Text);
                cmd.Parameters.AddWithValue("@st",Session["str"].ToString());
                DropDownList3.DataSource = cmd.ExecuteReader();
                DropDownList3.DataTextField = "time";
                DropDownList3.DataValueField = "time";
                DropDownList3.DataBind();
                con.Close();
            }
        }
        public void updt()
        {
            string bo = "booked";
            Session["bo"] =bo;
            con.Open();
            SqlCommand sc = new SqlCommand("update sche set status=@bk where time=@tm and demail=@dl", con);
            sc.Parameters.AddWithValue("@tm", DropDownList3.SelectedItem.Value);
            sc.Parameters.AddWithValue("@dl", DropDownList2.SelectedItem.Value);
            sc.Parameters.AddWithValue("@bk",Session["bo"].ToString());
            sc.ExecuteNonQuery();
            Response.Redirect("<script>alert('Booked Successfully')</script>");
            Response.Redirect("pathome.aspx");
            con.Close();
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into appt(patientName,time,date,pemail,demail) values(@nam,@tim,@dat,@pe,@de)", con);
            cmd.Parameters.AddWithValue("@tim", DropDownList3.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@dat", TextBox3.Text);
            cmd.Parameters.AddWithValue("@de", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@nam", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pe", Session["pemail"].ToString());
            cmd.ExecuteNonQuery();
            con.Close();
            updt();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookappt.aspx");
        }
    }
}