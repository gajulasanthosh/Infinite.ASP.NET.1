using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day2.WebApps
{
    public partial class HiddenFieldDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSalary_Click(object sender, EventArgs e)
        {
            var salary = int.Parse(TxtDaysWorked.Text) * int.Parse(TxtPerDaySalary.Value);
            LblMessage.Text = salary.ToString();
        }
    }
}