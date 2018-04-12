using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=MANI;Initial Catalog=FPICK;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
       if(Convert.ToInt16(Session["fail"])==3)
       {
           Response.Redirect("fogot.aspx");
       }
       else if (Convert.ToInt16(Session["fail"]) == 1)
       {
           Label1.Visible = true;
           Label2.Visible = true;
           Button1.Visible = true;
       }
       else
       {
           Label1.Visible = false;
           Button1.Visible = false;
           Label2.Visible = false;
       }
    }


    protected void Loginbtn_Click(object sender, EventArgs e)
    {
        con.Open();
        string pwd;
        string salt;
        string s;
        int block = 0;
        pwd = TextBox2.Text;
        salt = TextBox1.Text;
        s = TextBox2.Text + salt;
        var data = Encoding.ASCII.GetBytes(s);

        var sha1 = new SHA1CryptoServiceProvider();
        var sha1data = sha1.ComputeHash(data);
        var hashedPassword = ASCIIEncoding.Default.GetString(sha1data);
       

       
       
            SqlCommand cmd = new SqlCommand("SELECT UID,PWD,BLOCKSTATUS FROM details where UID='" + TextBox1.Text + "'AND PWD='" + hashedPassword + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
           

            da.Fill(ds, "details");
            
        try
        {
            block =Convert.ToInt32( ds.Tables["details"].Rows[0]["BLOCKSTATUS"].ToString());
        }
        catch(Exception)
        { }
       
        con.Close(); 
       
        con.Open();
        SqlDataReader d1 = cmd.ExecuteReader();
       
        if (d1.HasRows == true )
        {
            
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            
            if (Convert.ToInt16(block) == 0)
            {
                Session["field1"] = TextBox1.Text;
                Response.Redirect("home.aspx");

            }
            
            else 
            {
                Session["field1"] = TextBox1.Text;
                Response.Redirect("verif.aspx");
            }
        }
        else
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Button1.Visible = true;
            Session["fail"] = Convert.ToInt16(Session["fail"]) + 1;
        }
        
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["pwd"] = TextBox1.Text;
        
        Response.Redirect("recover.aspx");
    }
}