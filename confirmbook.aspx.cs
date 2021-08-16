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


public partial class confirmbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      TextBox1.Text=Request.QueryString["roomid"];
      if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("roomid");
            dt.Columns.Add("room_no");
            dt.Columns.Add("room_type");
            dt.Columns.Add("room_price");
            dt.Columns.Add("hotal_rent");
            dt.Columns.Add("tax");
            dt.Columns.Add("total_price");

            if (Request.QueryString["roomid"] != null)
            {
                dr = dt.NewRow();
                string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {

                    SqlCommand cd = new SqlCommand("select * from room  where roomid=" + Request.QueryString["roomid"], con);
                    SqlDataAdapter sda = new SqlDataAdapter();
                    sda.SelectCommand = cd;
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    dr["sno"] = 1;
                    dr["roomid"] = ds.Tables[0].Rows[0]["roomid"].ToString();
                    dr["room_no"] = ds.Tables[0].Rows[0]["room_no"].ToString();
                    dr["room_type"] = ds.Tables[0].Rows[0]["room_type"].ToString();
                    dr["room_price"] = ds.Tables[0].Rows[0]["room_price"].ToString();
                    int room_price = Convert.ToInt16(ds.Tables[0].Rows[0]["room_price"].ToString());
                    dr["hotal_rent"] = 200;
                    int hotal_rent = Convert.ToInt16(200);
                    dr["tax"] = 20;
                    int tax = Convert.ToInt16(20);
                    int total_price = room_price + hotal_rent + tax;
                    dr["total_price"] = total_price;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }

            }
            else
            {
                Label3.Text = "invalid room id";
                Label3.ForeColor = Color.Red;

            }

        }
         
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
       using (SqlConnection con = new SqlConnection(cs))
       {
           foreach (GridViewRow gr in GridView1.Rows)
           {
               SqlCommand cd = new SqlCommand("insert into payment values('" + gr.Cells[1].Text + "','" + gr.Cells[2].Text + "','" + gr.Cells[3].Text + "','" + gr.Cells[4].Text + "','" + gr.Cells[5].Text + "','" + gr.Cells[6].Text + "','" + gr.Cells[7].Text + "')", con);
               con.Open();
               cd.ExecuteNonQuery();

               Response.Redirect("~/conformation.aspx?roomid=" + TextBox1.Text);
           }
       }
        

    }
}