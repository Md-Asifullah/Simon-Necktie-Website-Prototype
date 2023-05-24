using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        System.Data.DataView dv = (System.Data.DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

        if (dv.Count == 0)
        {
            LoginErrorMsg.Text = "Username and Password not match!";
            return;
        }
        Session["Username"] = dv[0].Row["Username"].ToString();
        Session["FirstName"] = dv[0].Row["FirstName"].ToString();
        Session["UserType"] = dv[0].Row["UserType"].ToString();
        if (Session["PID"] != null)
            Response.Redirect("~/Products.aspx#ContentPlaceHolder1_Panel1");
        if (Session["UserType"].ToString().Equals("admin"))
            Response.Redirect("~/Default.aspx");
        if (Session["UserType"].ToString().Equals("user"))
            Response.Redirect("~/Default.aspx");
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.ToString());
    }
}