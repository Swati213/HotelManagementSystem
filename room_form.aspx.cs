using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class room_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["roomid"].ToString();
        TextBox2.Text = Request.QueryString["room_no"].ToString();
        TextBox3.Text = Request.QueryString["room_type"].ToString();
        TextBox4.Text = Request.QueryString["room_price"].ToString();
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cd = new SqlCommand("update room set status='unavailable'  where roomid='" + TextBox1.Text + "' ", con);
                con.Open();
                cd.ExecuteNonQuery();
                Response.Redirect("~/reservation.aspx?roomid=" + TextBox1.Text);
            }
         }
}