using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class message : System.Web.UI.Page
{
    string uname;
    SqlConnection con = new SqlConnection("Data Source=MANI;Initial Catalog=FPICK;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        uname = Session["field1"].ToString();
        SqlCommand cmd1 = new SqlCommand("SELECT UserName FROM details where UID='" + uname + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds, "details");
        txtNickName.Text = ds.Tables["details"].Rows[0]["UserName"].ToString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label5.Text;
        Response.Redirect("home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label5.Text;
        Response.Redirect("pfl.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label5.Text;
        Response.Redirect("fnds.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label5.Text;
        Response.Redirect("notif.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label5.Text;
        Response.Redirect("message.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label5.Text;
        Response.Redirect("settings.aspx");

    }
}