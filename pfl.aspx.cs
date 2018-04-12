using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class pfl : System.Web.UI.Page
{
    string uname;
    SqlConnection con = new SqlConnection("Data Source=MANI;Initial Catalog=FPICK;Integrated Security=True");
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        uname = Session["field1"].ToString();
        SqlCommand cmd1 = new SqlCommand("SELECT UserName,SEX,DOB,PIC FROM details where UID='" + uname + "'", con);

        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds, "details");


        Label5.Text = ds.Tables["details"].Rows[0]["UserName"].ToString();
      
        Label6.Text = ds.Tables["details"].Rows[0]["SEX"].ToString();
        Label7.Text = ds.Tables["details"].Rows[0]["DOB"].ToString();
        Image1.ImageUrl = ("~/pic/" + ds.Tables["details"].Rows[0]["PIC"].ToString());
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        con.Open();
        try
        {
        FileUpload1.SaveAs(Server.MapPath("~/Images/" + FileUpload1.FileName));
        string up = "~/Images/" + FileUpload1.FileName.ToString();
        SqlCommand pcmd = new SqlCommand("insert into img(UID,PIC,UNAME,IMGPATH,PTIME)VALUES(@UID,@PIC,@UNAME,@img,@ptime)", con);
        pcmd.Parameters.AddWithValue("@UID", uname);
        pcmd.Parameters.AddWithValue("@UNAME", Label5.Text);
        pcmd.Parameters.AddWithValue("@img", up);
        pcmd.Parameters.AddWithValue("@PIC", Image1.ImageUrl.ToString());
        pcmd.Parameters.AddWithValue("@ptime", DateTime.Now);
        pcmd.ExecuteNonQuery();

        FormView1.DataBind();
       }
        catch(Exception)
        {
            Response.Redirect("404.aspx");
        }
    }
}