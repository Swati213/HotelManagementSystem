using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
public partial class useriddetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
      }
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cd = new SqlCommand("insert into room values('" + troomno.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DropDownList1.Text + "','" + DropDownList4.Text + "')", con);
                con.Open();
                cd.ExecuteNonQuery();
                Label7.Text = " Insert Successfully";
                Label7.ForeColor = Color.Blue;
               
            }
        }
        else
        {
            Response.Redirect("~/login.aspx");
        }

    }

  
}