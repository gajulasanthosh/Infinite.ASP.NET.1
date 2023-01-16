using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day2.WebApps
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Read data from Query String
            if (Request.QueryString["uid"] != null)
            {
                LblMessage.Text = $"Hi, {Request.QueryString["uid"]}";
            }
            else
            {
                LblMessage.Text = "Hi, Guest";
            }

            ////Session State
            //if (Session["UserId"] != null)
            //{
            //    LblMessage.Text = $"Hi, {Session["UserId"]}";
            //}
            //else
            //{
            //    LblMessage.Text = "Welcome, Guest";
            //}
        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormData2.aspx");
        }
    }
}