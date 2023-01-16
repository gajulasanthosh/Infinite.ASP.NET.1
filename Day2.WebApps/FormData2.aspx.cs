using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Day2.WebApps
{
    public partial class FormData2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                LblMessage.Text = "Welcome, " + Session["UserId"];
                if (!Page.IsPostBack)
                {

                    // Bind GridView
                    GridCustomer.DataSource = BindGrid();
                    GridCustomer.DataBind();

                    //Bind DropdownList
                    DdlCountries.DataSource = BindDropDown();
                    DdlCountries.DataTextField = "Country";
                    DdlCountries.DataValueField = "Country";
                    DdlCountries.DataBind();

                }
            }
        }

        public DataTable BindGrid()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString))
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("Select * from Customers", con))
                {
                    DataSet ds = new DataSet();
                    adapter.Fill(ds, "Customers");
                    return ds.Tables["Customers"];
                }
            }
        }

        public DataTable BindDropDown()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString))
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("Select Distinct Country from Customers", con))
                {
                    DataSet ds = new DataSet();
                    adapter.Fill(ds, "Customers");
                    return ds.Tables["Customers"];
                }
            }
        }

        protected void DdlCountries_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString))
            {
                using (SqlDataAdapter dataAdapter = new SqlDataAdapter("Select * from Customers Where Country=@Country", con))
                {
                    DataSet ds = new DataSet();
                    dataAdapter.SelectCommand.Parameters.AddWithValue("@Country", DdlCountries.SelectedItem.Text);
                    dataAdapter.Fill(ds, "CustomerWithCountry");
                    GridCustomer.DataSource = ds.Tables["CustomerWithCountry"];
                    GridCustomer.DataBind();
                }
            }

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString))
            {
                using (SqlDataAdapter dataAdapter = new SqlDataAdapter("Select * from Customers Where Country=@Country", con))
                {
                    DataSet ds = new DataSet();
                    dataAdapter.SelectCommand.Parameters.AddWithValue("@Country", TxtName.Text);
                    dataAdapter.Fill(ds, "CustomerWithCountry");
                    GridCustomer.DataSource = ds.Tables["CustomerWithCountry"];
                    GridCustomer.DataBind();
                }
            }

        }

        protected void BtnSignOut_Click(object sender, EventArgs e)
        {
            if(Session["UserId"]!= null)
            {
                Session.Remove("UserId");
                Response.Redirect("SessionStateEx.aspx");
            }
        }
    }
}