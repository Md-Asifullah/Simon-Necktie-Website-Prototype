using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Navbar Access Control Start
        PublicNavbar.Visible = false;
        AdminNavbar.Visible = false;
        CustomerNavbar.Visible = false;
        BottomFooterPublic.Visible = false;
        BottomFooterMember.Visible = false;
        
        if (Session["UserType"] != null)
        {
            if (Session["UserType"].ToString().Equals("admin")) {
                Label1.Text = Session["FirstName"].ToString();
                AdminNavbar.Visible = true;
            }else if (Session["UserType"].ToString().Equals("user"))
            {
                Label2.Text = Session["FirstName"].ToString();
                CustomerNavbar.Visible = true;
            }
            BottomFooterMember.Visible = true;
        }
        else {
            PublicNavbar.Visible = true;
            BottomFooterPublic.Visible = true;
        }
        // Navbar Access Control End
       
    }

    protected void btnlogout1_action(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Default.aspx");
    }

    protected void btnlogout2_action(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Default.aspx");
    }
}
