using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day2.WebApps
{
    public partial class RegistrationForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void CvBeverages_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = ChkBeverages.SelectedItem != null;
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("WebForm1.aspx"); 
                //Server.Transfer("HomePage.aspx");
            }
        }
    }
}