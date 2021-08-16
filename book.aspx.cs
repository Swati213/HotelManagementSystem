using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["roomid"];
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cd = new SqlCommand("insert into booking  values('" + TextBox1.Text + "','" + TextBox6.Text + "','" + TextBox11.Text + "','" + TextBox10.Text + "')", con);
            con.Open();
            cd.ExecuteNonQuery();
            Response.Redirect("~/confirmbook.aspx?roomid=" + TextBox1.Text);
            
        } 
            
    }
}