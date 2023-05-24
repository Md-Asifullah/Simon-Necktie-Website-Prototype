using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["PID"] != null) {
            Label3.Text = Session["PID"].ToString();
            Label4.Text = Session["PName"].ToString();
            Label5.Text = Session["PPrice"].ToString();
            DropDownList1.Text = Session["Qty"].ToString();
            Label6.Text = Session["Total"].ToString();
            Panel1.Visible = true;
        }
        Session["PID"] = null;
        Session["PName"] = null;
        Session["PPrice"] = null;
        Session["Qty"] = null;
        Session["Total"] = null;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label3.Text = GridView1.SelectedRow.Cells[0].Text;
        Label4.Text = GridView1.SelectedRow.Cells[1].Text;
        Label5.Text = GridView1.SelectedRow.Cells[3].Text;
        Label6.Text = Label5.Text;
        Panel1.Visible = true;
        Button1.Focus();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        double result = 0.0;
        double price = Convert.ToDouble(Double.Parse(Label5.Text, System.Globalization.NumberStyles.Currency));
        result = price * Convert.ToInt16(DropDownList1.Text);
        if (Convert.ToInt16(DropDownList1.Text) >= 5) {
            result = result - 20;
        }
        Label6.Text = result.ToString("C");
        Button1.Focus();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Session["PID"] = Label3.Text;
        Session["PName"] = Label4.Text;
        Session["PPrice"] = Label5.Text;
        Session["Qty"] = DropDownList1.Text;
        Session["Total"] = Label6.Text;
        
        if (Session["UserType"] == null || !Session["UserType"].ToString().Equals("user"))
        {
            Response.Redirect("~/Login.aspx");
        }

        Session["PPrice"] = Convert.ToDouble(Double.Parse(Label5.Text, System.Globalization.NumberStyles.Currency)).ToString();
        Session["Total"] = Convert.ToDouble(Double.Parse(Label6.Text, System.Globalization.NumberStyles.Currency)).ToString();

        Session["Now"] = DateTime.Now.ToString();
        SqlDataSource2.Insert();
        Response.Redirect("~/User/ViewCart.aspx");
    }
}