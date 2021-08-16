using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net.Mail;


public partial class contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
           // string cs = ConfigurationManager.ConnectionStrings["RegisterDatabaseConnectionString1"].ConnectionString;
           // using (SqlConnection con = new SqlConnection(cs))
           // {
               // SqlCommand cd = new SqlCommand("insert into contactus values('" + Txtname.Text + "','" + Txtemail.Text + "','" + Txtsub.Text + "','" + Txtmsg.Text + "')", con);
               // con.Open();
             //   cd.ExecuteNonQuery();
                if (Page.IsValid)
                {
                    MailMessage mailmessage = new MailMessage();
                    mailmessage.From = new MailAddress("swatisinha1200@gmail.com");
                    mailmessage.To.Add("swatisinha1200@gmail.com");
                    mailmessage.Subject = Txtsub.Text;
                    mailmessage.Body = "<b>Sender Name : </b>" + Txtname.Text + "<br/>"
                    + "<b>Sender Email : </b>" + Txtemail.Text + "<br/>"
                    + "<b>Comments : </b>" + Txtmsg.Text;
                    mailmessage.IsBodyHtml = true;

                    SmtpClient smtpclient = new SmtpClient("smtp.gmail.com", 587);
                    smtpclient.EnableSsl = true;
                    smtpclient.UseDefaultCredentials = true;
                   
                    smtpclient.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtpclient.Credentials = new System.Net.NetworkCredential("swatisinha1200@gmail.com", "mylove123");
                    smtpclient.Send(mailmessage);
                    lblmsg.ForeColor = Color.Purple;
                    lblmsg.Text = "Message Sent";

                    Txtname.Enabled = false;
                    Txtemail.Enabled = false;
                    Txtsub.Enabled = false; 
                    Txtmsg.Enabled = false;
                    Button1.Enabled = false;
                }
            }
        //}
        catch (Exception ex)
        {
            //log-Event Viewer or table
            lblmsg.ForeColor = Color.Purple;
            lblmsg.Text = "problem  in network ,please try again";
        }
    }
}