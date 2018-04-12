using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;

public partial class recover : System.Web.UI.Page
{
    string pwd,pass;
    SqlConnection con = new SqlConnection("Data Source=MANI;Initial Catalog=FPICK;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        pwd = Session["pwd"].ToString();
        TextBox1.Text = pwd;
        con.Open();
        SqlCommand cmd = new SqlCommand("select PWD from details where UID='"+pwd+"'",con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "details");
        pass = ds.Tables["details"].Rows[0]["PWD"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         MailMessage mailObj = new MailMessage(
            "dj.kantan11@gmail.com", pwd, "passWD", pass);
        SmtpClient SMTPServer = new SmtpClient("127.0.0.1");
        try
        {
            SMTPServer.Send(mailObj);
            Response.Write("<script>alert(SUCCESS)</script");
            Button1.Text = "SENT";
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(FAILED)</script");
        }
    }
}