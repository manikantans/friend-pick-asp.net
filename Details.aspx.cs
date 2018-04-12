using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList1.Visible = false;

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button1.Text = DropDownList1.SelectedItem.Text;
        DropDownList1.Visible = false;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DropDownList1.Visible = true;
    }
}