using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BotDetect.Web.UI;
using System.Data;
using System.Data.SqlClient;

public partial class verif : System.Web.UI.Page
{
    string uname;
    SqlConnection con = new SqlConnection("Data Source=MANI;Initial Catalog=FPICK;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        uname = Session["field1"].ToString();
       
        con.Open();
        SqlCommand cmd1 = new SqlCommand("UPDATE details set BLOCKSTATUS='"+1+"' where UID='" + uname + "'", con);
        cmd1.ExecuteNonQuery();
        Label3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            // validate the Captcha to check we're not dealing with a bot
            bool isHuman = mcaptcha.Validate(TextBox1.Text);

            TextBox1.Text = null; // clear previous user input

            if (!isHuman)
            {
                // TODO: Captcha validation failed, show error message  
                Label3.Text = "Captcha doesnt't match";
                Label3.Visible = true;
            }
            else
            {
                // TODO: Captcha validation passed, proceed with protected action  
                Label3.Visible = false;
                SqlCommand cmd = new SqlCommand("UPDATE details set BLOCKSTATUS='" + 0 + "' where UID='" + uname + "'", con);
                cmd.ExecuteNonQuery();
                Session["fnds"] = 0;
                Response.Redirect("Default.aspx");
               

            }
        }
    }
}