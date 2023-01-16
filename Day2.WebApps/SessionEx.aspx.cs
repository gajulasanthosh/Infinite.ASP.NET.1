using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day2.WebApps
{
    public partial class SessionEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Application["Count"] != null)
            {
                LblSessionCount.Text = $"Total Users Online :{Application["Count"]}";
                //Response.Write(Session.SessionID);
            }

        }

        
    }
}