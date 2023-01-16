using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day2.WebApps
{
    public partial class ViewStateDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCHange_Click(object sender, EventArgs e)
        {
            Lbl1.Text = "Good Morning";
            Lbl2.Text = "Hello World!!!";
        }
    }
}