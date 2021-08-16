using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

public partial class checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       string cs=ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
       using (SqlConnection con = new SqlConnection(cs))
       {
           var str = "select * from reservation,con";
           DataTable dt = new DataTable();
           con.Open();
           SqlDataReader sda = null;
           SqlCommand cd = new SqlCommand("select * from reservation where roomid='" + TextBox1.Text + "'", con);
           sda = cd.ExecuteReader();
           while(sda.Read())
           {
               
               TextBox2.Text = sda["customer_name"].ToString();
               TextBox3.Text = sda["Idtype"].ToString();
               TextBox4.Text = sda["Idno"].ToString();
               TextBox5.Text = sda["No of adults"].ToString();
               TextBox6.Text = sda["no of children"].ToString();
               TextBox7.Text = sda["purpose"].ToString();
               TextBox8.Text = sda["no of days"].ToString();
           }
           con.Close();
       }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
         using (SqlConnection con = new SqlConnection(cs))
         {
             SqlCommand cd = new SqlCommand("insert into checkin   values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')", con);
             con.Open();
             cd.ExecuteNonQuery();
             Label11.Text = "Data sumitted";
             Label11.ForeColor = Color.Blue;
         }
    }
}