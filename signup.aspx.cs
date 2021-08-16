using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;


public partial class signup : System.Web.UI.Page
{
    string gender;
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void btsignup_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != null & TextBox2.Text != null && gender != null && TextBox3.Text != null && TextBox4.Text != null && TextBox5.Text != null && TextBox6.Text != null && TextBox7.Text != null && TextBox8.Text != null && TextBox9.Text != null && TextBox10.Text != null && TextBox11.Text != null && TextBox12.Text != null && TextBox13.Text != null)
        {
            if(TextBox13.Text== TextBox14.Text)
            {
            string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cd = new SqlCommand("insert into  register  values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + gender + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','U')", con);
                con.Open();
                cd.ExecuteNonQuery();
                lblmsg.Text = "Data sumitted";
                lblmsg.ForeColor = Color.Blue;
                Response.Redirect("~/login.aspx");
            }
        }
        else
        {
            lblmsg.ForeColor = Color.Red;
            lblmsg.Text = "password do not match";
        }
    }
        else
        {
            lblmsg.ForeColor = Color.Red;
            lblmsg.Text="All fields are mandatory";
        }
    
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        gender = "Male";
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        gender = "Female";
    }
}