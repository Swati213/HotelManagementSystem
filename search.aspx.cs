using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GridView1.Visible = false;
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
         }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {

            GridViewRow gr = GridView1.SelectedRow;
            Response.Redirect("room_form.aspx?roomid=" + gr.Cells[0].Text + "&room_no=" + gr.Cells[1].Text + "&room_type=" + gr.Cells[2].Text + "&room_price=" + gr.Cells[3].Text + "&floor_no" + gr.Cells[4].Text);

        }

        else
        {
            Response.Redirect("~/login.aspx?rurl=search");
        }
    }
}