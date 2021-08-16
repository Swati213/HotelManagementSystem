using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"]!=null)
            {
                Username.Text = Request.Cookies["UNAME"].Value;
                Password.Attributes["Value"] = Request.Cookies["PWD"].Value;
                CheckBox1.Checked = true;
            }
        }

         }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs=ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cd = new SqlCommand("select * from register where username='" + Username.Text + "' and password='" + Password.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                Session["USERID"]=dt.Rows[0]["registerId"].ToString();
                Session["USEREMAIL"]=dt.Rows[0]["email"].ToString();


                if (CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = Username.Text;
                    Response.Cookies["PWD"].Value = Password.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);


                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);

                }

                string Utype;
                Utype = dt.Rows[0][15].ToString().Trim();
                if (Utype == "U")
                {
                    Session["USERNAME"] = Username.Text;
                    if (Request.QueryString["rurl"] != null)
                    {
                        if (Request.QueryString["rurl"] == "search")
                        {
                            Response.Redirect("~/search.aspx");
                        }

                    }
                    else
                    {
                        Response.Redirect("~/UserHome.aspx");
                    }
                }
                if (Utype == "A")
                {
                    Session["USERNAME"] = Username.Text;
                    Response.Redirect("~/AdminHome.aspx");
                }


            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
        }

         }

    protected void lbForgotPass_Click(object sender, EventArgs e)
    {

    }
}