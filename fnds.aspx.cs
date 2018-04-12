using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;

public partial class fnds : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=MANI;Initial Catalog=FPICK;Integrated Security=True");
    string uname;
    string img1, img2, img3, img4, img5, l1, l2, l3, l4, l5;
    protected void Page_Load(object sender, EventArgs e)
    {
        uname = (string)(Session["field1"]);
       
            con.Open();
            //BindRepeaterData();
            SqlCommand cmd2 = new SqlCommand("SELECT UserName,PIC FROM details where UID !='"+ uname +"'", con);

            SqlDataAdapter da1 = new SqlDataAdapter(cmd2);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "details");
            Label7.Text = ds1.Tables["details"].Rows[0]["UserName"].ToString();
            Image3.ImageUrl = ("~/pic/" + ds1.Tables["details"].Rows[0]["PIC"].ToString());
            Label6.Text = ds1.Tables["details"].Rows[1]["UserName"].ToString();
            Image2.ImageUrl = ("~/pic/" + ds1.Tables["details"].Rows[1]["PIC"].ToString());
            Label5.Text = ds1.Tables["details"].Rows[3]["UserName"].ToString();
            Image1.ImageUrl = ("~/pic/" + ds1.Tables["details"].Rows[3]["PIC"].ToString());
            Label8.Text = ds1.Tables["details"].Rows[2]["UserName"].ToString();
            Image4.ImageUrl = ("~/pic/" + ds1.Tables["details"].Rows[2]["PIC"].ToString());
            Label9.Text = ds1.Tables["details"].Rows[4]["UserName"].ToString();
            Image5.ImageUrl = ("~/pic/" + ds1.Tables["details"].Rows[4]["PIC"].ToString());
           
            try
            {
                SqlCommand cmd1 = new SqlCommand("SELECT UserName,SEX,DOB,PIC FROM details where UID='" + uname + "'", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                DataSet ds = new DataSet();
                da.Fill(ds, "details");

                Label1.Text = ds.Tables["details"].Rows[0]["UserName"].ToString();

                LSEX.Text = ds.Tables["details"].Rows[0]["SEX"].ToString();
                LDOB.Text = ds.Tables["details"].Rows[0]["DOB"].ToString();
                Image8.ImageUrl = ("~/pic/"+ds.Tables["details"].Rows[0]["PIC"].ToString());
                
            }
            catch (Exception)
            {
                Response.Redirect("404.aspx");
            }
            img1 = (Image1.ImageUrl.ToString());
            l1 = Label5.Text;
            img2 = ( Image2.ImageUrl.ToString());
            l2 = Label6.Text;
            img3 = ( Image3.ImageUrl.ToString());
            l3 = Label7.Text;
            l4 = Label8.Text;
            img4 = (Image4.ImageUrl.ToString());
            l5 = Label9.Text;
            img5 = (Image5.ImageUrl.ToString());
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label1.Text;
        Response.Redirect("home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["field1"] = Label1.Text;
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

    protected void Button8_Click(object sender, EventArgs e)
    {
        
        if(Convert.ToInt16(Session["fnds"])<3)
        {
            try
            {
            SqlCommand cmd11=new SqlCommand("insert into Flist(UID,UID2,Fstatus,PIC)values('"+uname+"','"+l1+"','"+0+"','"+img1+"')",con);
           cmd11.ExecuteNonQuery();
            Session["fnds"] = Convert.ToInt16(Session["fnds"]) + 1;
            Button8.Text = "Added";
             }
            catch(Exception)
            {
                Response.Redirect("down.aspx");
            }
        }
        else
        {
            
            Response.Redirect("verif.aspx");
        }
        
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
       
        if (Convert.ToInt16(Session["fnds"]) < 3)
        {
 try
            {            
SqlCommand cmd3 = new SqlCommand("insert into Flist(UID,UID2,Fstatus,PIC)values('" + uname + "','" + l2 + "','" + 0 + "','" + img2 + "')", con);
            cmd3.ExecuteNonQuery();
            Session["fnds"] = Convert.ToInt16(Session["fnds"]) + 1;
            Button9.Text = "Added";
             }
            catch(Exception)
            {
                Response.Redirect("down.aspx");
            }
        }
        else
        {
            Response.Redirect("verif.aspx");
        }
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        
        if (Convert.ToInt16(Session["fnds"]) < 3)
        {
            try
            {
            SqlCommand cmd4 = new SqlCommand("insert into Flist(UID,UID2,Fstatus,PIC)values('" + uname + "','" + l3 + "','" + 0 + "','" + img3 + "')", con);
            cmd4.ExecuteNonQuery();
            Session["fnds"] = Convert.ToInt16(Session["fnds"]) + 1;
            Button10.Text = "Added";
             }
            catch(Exception)
            {
                Response.Redirect("down.aspx");
            }
        }
        else
        {
            Response.Redirect("verif.aspx");
        }
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
       
        if (Convert.ToInt16(Session["fnds"]) < 3)
        {
 try
            {
            SqlCommand cmd6 = new SqlCommand("insert into Flist(UID,UID2,Fstatus,PIC)values('" + uname + "','" + l4 + "','" + 0 + "','" + img4 + "')", con);
            cmd6.ExecuteNonQuery();
            Session["fnds"] = Convert.ToInt16(Session["fnds"]) + 1;
            Button11.Text = "Added";
             }
            catch(Exception)
            {
                Response.Redirect("down.aspx");
            }
        }
        else
        {
            Response.Redirect("verif.aspx");
        }
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        
        if (Convert.ToInt16(Session["fnds"]) < 3)
        {
            try
            { 
            SqlCommand cmd5 = new SqlCommand("insert into Flist(UID,UID2,Fstatus,PIC)values('" + uname + "','" + l5 + "','" + 0 + "','" + img5 + "')", con);
            cmd5.ExecuteNonQuery();
            Session["fnds"] = Convert.ToInt16(Session["fnds"]) + 1;
            Button12.Text = "Added";
                }
            catch(Exception)
            {
                Response.Redirect("down.aspx");
            }
        }
        else
        {
            Response.Redirect("verif.aspx");
        }
    }
    
}