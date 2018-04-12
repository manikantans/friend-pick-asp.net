using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class settings : System.Web.UI.Page
{
    string uname;
    SqlConnection con = new SqlConnection("Data Source=MANI;Initial Catalog=FPICK;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        uname = Session["field1"].ToString();
        Label14.Visible = false;
        con.Open();
        SqlCommand cmd1 = new SqlCommand("SELECT UserName,SEX,DOB,PIC FROM details where UID='" + uname + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds, "details");


        Label11.Text = ds.Tables["details"].Rows[0]["UserName"].ToString();

        Label12.Text = ds.Tables["details"].Rows[0]["SEX"].ToString();
        Label13.Text = ds.Tables["details"].Rows[0]["DOB"].ToString();
        Image1.ImageUrl = ("~/pic/" + ds.Tables["details"].Rows[0]["PIC"].ToString());
    }
   
    protected void Button8_Click(object sender, EventArgs e)
    {
        SqlCommand test = new SqlCommand("select * from settings where UID='"+uname+"'",con);
        SqlDataReader d1 = test.ExecuteReader();
        string status = DropDownList1.SelectedItem.ToString();
        if(d1.HasRows==true)
        {
            con.Close();
            con.Open();
            SqlCommand cmd4 = new SqlCommand("update settings WORK='" + TextBox3.Text +"',PLACE='" + TextBox1.Text +"',MSTATUS='"+ status +"',PFN='"+ TextBox5.Text + "' where UID='"+uname+"'",con);
            cmd4.ExecuteNonQuery();
            Label14.Text = "SUCCESSFULLY UPDATED";
        }
        else
        {
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into settings(UID,WORK,PLACE,MSTATUS,PFN)Values('" + uname + "','" + TextBox3.Text + "','" + TextBox1.Text + "','" + status + "','" + TextBox5.Text + "')",con);
            cmd.ExecuteNonQuery();
            Label14.Text = "SUCCESSFULLY UPDATED";
            DataList1.DataBind();
            Label14.Visible = true;
        }
        
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button9_Click(object sender, EventArgs e)
    {

        Response.Redirect("ChangePWD.aspx");
        
    }
}