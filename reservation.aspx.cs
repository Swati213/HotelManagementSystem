using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class reservation : System.Web.UI.Page
{
    string ad;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["roomid"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
       using (SqlConnection con = new SqlConnection(cs))
       {
           SqlCommand cd = new SqlCommand("insert into reservation  values('" + tfirstname.Text + "','" + ad + "','" + tidno.Text + "','" + tnoadults.Text + "','" + Tnochildren.Text + "','" + tpurpose.Text + "','" + DropDownList5.Text + "','"+TextBox1.Text+"')", con);
           con.Open();
           cd.ExecuteNonQuery();
           Label10.Text = "data sumitted";
           Response.Redirect("~/book.aspx?roomid=" + TextBox1.Text);
         }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        ad = "yes";
    
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        ad = "no";
    
    }
   }