using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ChangePwd : System.Web.UI.Page
{
    string uname;
    SqlConnection con = new SqlConnection("Data Source=MANI;Initial Catalog=FPICK;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        uname=Session["field1"].ToString();
        TextBox4.Text = uname;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("update details set PWD='" + TextBox2.Text + "' where UID='" + TextBox4.Text + "' and PWD='" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert(Successfully Changed)</script>");
        }
        catch(Exception)
        {
            Response.Redirect("down.aspx");
        }
        
    }
   
}