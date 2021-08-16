using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;


public partial class RecoverPassword : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
    String GUIDvalue;
    DataTable dt = new DataTable();
    int uid;

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
           GUIDvalue =Request.QueryString["uid"];
            if (GUIDvalue != null)
            {
                SqlCommand cd = new SqlCommand("select * from ForgotPassRequests where id='" + GUIDvalue.ToString() + "'", con);
                Lblmsg.Text = GUIDvalue.ToString();
                con.Open();
                SqlDataReader dr = cd.ExecuteReader();
                if(dr.Read())
                uid = Convert.ToInt32(dr["uid"].ToString());
                Lblmsg.Text += uid.ToString();
            }
            else
            {
                Response.Redirect("~/home.aspx");

            }
        }
            
            if (!IsPostBack)
            {
                if (uid != 0)
                {
                    tbnewpass.Visible = true;
                    tbconfirmpass.Visible = true;
                    lblpassword.Visible = true;
                    lblretypepass.Visible = true;
                    btRecpass.Visible = true;

                }
                else
                {
                   // Lblmsg.Text = "Your password link is Expired or invalid!";
                    Lblmsg.ForeColor = Color.Red;
                }
        }
    }
    protected void btRecpass_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cd=new SqlCommand("update register set password='"+tbnewpass.Text+"' where registerid='"+uid+"'",con);
            con.Open();
            cd.ExecuteNonQuery();
        }
    }
}