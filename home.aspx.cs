using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class home : System.Web.UI.Page
{
    string uname;
    SqlConnection con = new SqlConnection("Data Source=MANI;Initial Catalog=FPICK;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
         uname = (string)(Session["field1"]);
        if(!IsPostBack)
        {
      
        con.Open();
        //BindRepeaterData();
            try
            { 
        SqlCommand cmd1 = new SqlCommand("SELECT UserName,SEX,DOB,PIC FROM details where UID='" + uname + "'", con);
        
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds=new DataSet();
        da.Fill(ds,"details");
               

        Label1.Text = ds.Tables["details"].Rows[0]["UserName"].ToString();
        TextBox2.Text = ds.Tables["details"].Rows[0]["UserName"].ToString();
            LSEX.Text = ds.Tables["details"].Rows[0]["SEX"].ToString();
            LDOB.Text = ds.Tables["details"].Rows[0]["DOB"].ToString();
            Image1.ImageUrl = ("~/pic/"+ds.Tables["details"].Rows[0]["PIC"].ToString());
                }
            catch(Exception)
            {
                Response.Redirect("404.aspx");
            }
        }
        //if (!IsPostBack)
        //{
           
        //}

    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into POST(PIC,UserName,COMMENT,CTIME) values(@PIC,@UserName,@comment,@postedDate)", con);
        cmd.Parameters.AddWithValue("@PIC", Image1.ImageUrl.ToString());
        cmd.Parameters.AddWithValue("@UserName", TextBox2.Text);
       
        cmd.Parameters.AddWithValue("@comment", TextBox1.Text);
        cmd.Parameters.AddWithValue("@postedDate", DateTime.Now);
        cmd.ExecuteNonQuery();
        con.Close();
        //TextBox2.Text = string.Empty;
        TextBox1.Text = string.Empty;
        TextBox4.Text = string.Empty;
       
        //BindRepeaterData();
        DataList1.DataBind();
        DataList2.DataBind();


    }
    //Bind Data to Repeater Control
    //protected void BindRepeaterData()
    //{
    //    //con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from Repeater_Table Order By PostedDate desc", con);
    //    DataSet ds = new DataSet();
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    da.Fill(ds);
    //    //Repeater1.DataSource = ds;
    //    //Repeater1.DataBind();
    //    con.Close();
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label1.Text;
        Response.Redirect("home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["field1"] = uname;
        Response.Redirect("pfl.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label1.Text;
        Response.Redirect("fnds.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label1.Text;
        Response.Redirect("notif.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label1.Text;
        Response.Redirect("message.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label1.Text;
        Response.Redirect("settings.aspx");

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        con.Open();
        
        FileUpload1.SaveAs(Server.MapPath("~/Images/" + FileUpload1.FileName));
        string up ="~/Images/"+FileUpload1.FileName.ToString();
        SqlCommand pcmd = new SqlCommand("insert into img(UID,PIC,UNAME,IMGPATH,PTIME)VALUES(@UID,@PIC,@UNAME,@img,@ptime)",con);
       pcmd.Parameters.AddWithValue("@UID",uname);
        pcmd.Parameters.AddWithValue("@UNAME",TextBox2.Text);
        pcmd.Parameters.AddWithValue("@img",up);
        pcmd.Parameters.AddWithValue("@PIC", Image1.ImageUrl.ToString());
        pcmd.Parameters.AddWithValue("@ptime", DateTime.Now);
      pcmd.ExecuteNonQuery();
      DataList2.DataBind();
      DataList1.DataBind();
    }
   
}