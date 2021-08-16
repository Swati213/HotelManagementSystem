using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            Button1.Visible = false;
            btnSignOut.Visible = true; 
        }
        else
        {
            Button1.Visible = true;
            btnSignOut.Visible = false;
        }
   
    }
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/home.aspx");
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login.aspx");

    }
}
