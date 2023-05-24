using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (firstName.Text != "" & lastName.Text != "" & username.Text != "" & tbPassword.Text != "" & confirmPassword.Text != "" & email.Text != "" & contactNumber.Text != "" & address.Text != "") {
            if (tbPassword.Text == confirmPassword.Text) {

                this.CustomValidator1.Validate();
                if (!Page.IsValid)
                    return;

                this.SqlDataSource1.Insert();
                Message.ForeColor = Color.Green;
                Message.Text = "Registration Successful!";
            }
            else {
                Message.Text = "Passwords do not match";
            }
        }
        else
        {
            Message.Text = "All fields are Mandatory";
        }
        
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.ToString());
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        System.Data.DataView dv = new System.Data.DataView();
        dv = (System.Data.DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv.Count > 0)
            args.IsValid = false;
        else
            args.IsValid = true;
    }
}