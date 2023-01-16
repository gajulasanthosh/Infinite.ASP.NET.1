using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day2.WebApps
{
    public partial class SessionStateEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserId"] != null && Request.Cookies["Password"] != null)
                {
                    TxtUserId.Text = Request.Cookies["UserId"].Value;
                    TxtPassword.Text = Request.Cookies["Password"].Value;
                }
            }

        }

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            if (ChkRememberMe.Checked)
            {
                Response.Cookies.Add(new HttpCookie("UserId", TxtUserId.Text));
                Response.Cookies["UserId"].Expires = DateTime.Now.AddDays(2);
                Response.Cookies.Add(new HttpCookie("Password", TxtPassword.Text));
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(2);
            }

            ////Passing information using Query String
            //if (!String.IsNullOrWhiteSpace(TxtUserId.Text))
            //{
            //    Response.Redirect("HomePage.aspx?uid=" + TxtUserId.Text);
            //}

            if(TxtUserId.Text == "admin" && TxtPassword.Text == "admin@123")
            {
                Session["UserId"] = TxtUserId.Text;
                Response.Redirect("HomePage.aspx");
            }
        }
    }
}