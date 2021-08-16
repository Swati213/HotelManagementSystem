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
        string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            var str = "select * from checkin,con";
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader sda = null;
            SqlCommand cd = new SqlCommand("select * from checkin where rooomid='" + TextBox1.Text + "'", con);
            sda = cd.ExecuteReader();
            while (sda.Read())
            {

                TextBox2.Text = sda["customer_name"].ToString();
                TextBox3.Text = sda["Idtype"].ToString();
                TextBox4.Text = sda["Idno"].ToString();
                TextBox5.Text = sda["adults"].ToString();
                TextBox6.Text = sda["child"].ToString();
                TextBox7.Text = sda["purpose"].ToString();
                TextBox8.Text = sda["days"].ToString();
                TextBox9.Text = sda["checkin"].ToString();
                TextBox10.Text = sda["checkout"].ToString();

            }
            con.Close();
        }
   

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            var str1 = "select * from payment,con";
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader sda = null;
            SqlCommand cd = new SqlCommand("select * from payment where roomid='" + TextBox1.Text + "'", con);
            sda = cd.ExecuteReader();
            while (sda.Read())
            {

                TextBox11.Text = sda["room_no"].ToString();
                TextBox12.Text = sda["room_type"].ToString();
                TextBox13.Text = sda["room_price"].ToString();

                TextBox14.Text = sda["hotel_rent"].ToString();
                TextBox15.Text = sda["tax"].ToString();
                TextBox16.Text = sda["total_price"].ToString();
               
            }
            con.Close();
        }
   
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
         using (SqlConnection con = new SqlConnection(cs))
         {
             SqlCommand cd = new SqlCommand("insert into checkout   values('" + TextBox1.Text + "','"+TextBox2.Text+ "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "')", con);
             con.Open();
             cd.ExecuteNonQuery();
             Label17.Text = "Data sumitted";
             Label17.ForeColor = Color.Blue;

             
         }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cd = new SqlCommand("update room set status='available'  where roomid='" + TextBox1.Text + "' ", con);
            con.Open();
            cd.ExecuteNonQuery();
        }
    }
}