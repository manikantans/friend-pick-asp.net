using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
public partial class SignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=MANI;Initial Catalog=FPICK;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Signupbtn_Click(object sender, EventArgs e)
    {
      
                   String s;
            int block = 0;
            if (RadioButton1.Checked == true)
            {
                s = "male";
            }
            else
            {
                s = "female";
            }
        string pwd;
        string salt,s1;
        pwd = TextBox2.Text;
        salt = TextBox3.Text;
        s1 = pwd + salt;
        var data = Encoding.ASCII.GetBytes(s1);

        var sha1 = new SHA1CryptoServiceProvider();
        var sha1data = sha1.ComputeHash(data);
        var hashedPassword = ASCIIEncoding.Default.GetString(sha1data);
       
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("~/pic/" + FileUpload1.FileName));
            SqlCommand cmd = new SqlCommand("insert into details(UID,UserName,SEX,DOB,PWD,PIC,BLOCKSTATUS)VALUES('" + TextBox3.Text + "','" + TextBox1.Text + "','" + s + "','" + TextBox5.Text + "','" + hashedPassword + "','" + FileUpload1.FileName + "','" + block + "')", con);
            cmd.ExecuteNonQuery();

            Response.Redirect("Default.aspx");
       

    }
}