using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace PracticasWeb
{
    public partial class DemoCascadingDropDrownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlContinents.DataSource = GetData("spGetContinents", null);
                ddlContinents.DataBind();

                ListItem selectContinent = new ListItem("Select Continent", "-1");
                ddlContinents.Items.Insert(0,selectContinent);

                ListItem selectCountry = new ListItem("Select Country", "-1");
                ddlCountries.Items.Insert(0, selectCountry);

                ListItem selectCities = new ListItem("Select City", "-1");
                ddlCities.Items.Insert(0, selectCities);

                ddlCountries.Enabled = false;
                ddlCities.Enabled = false;
            }          
        }

        private DataSet GetData(string StoredProcedureName, SqlParameter sqlParameter)
        {
         
            string cn = ConfigurationManager.ConnectionStrings["SampleForCascadingDropDownList"].ConnectionString;

            using (SqlConnection sqlconn = new SqlConnection(cn))
            {
                SqlCommand sqlcommand = new SqlCommand(StoredProcedureName, sqlconn);
                sqlcommand.CommandType = CommandType.StoredProcedure;

                sqlconn.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcommand);

                if (sqlParameter != null)
                {
                    adapter.SelectCommand.Parameters.Add(sqlParameter);
                }


                DataSet ds = new DataSet();

                adapter.Fill(ds);

                return ds;
            }          
       
        }

        protected void ddlContinents_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            if (ddlContinents.SelectedValue != "-1")
            {
                //ok
                ddlCities.Enabled = false;
                ddlCountries.Enabled = true;

             

                SqlParameter sqlp = new SqlParameter("@ContinentId", ddlContinents.SelectedValue);               

                 ddlCountries.DataSource = GetData("spGetCountriesByContinentId", sqlp);
                 ddlCountries.DataBind();

                ListItem selectCountry = new ListItem("Select Country", "-1");
                ddlCountries.Items.Insert(0, selectCountry);              

            }
            else
            {
                ddlCountries.Enabled = false;
                ddlCities.Enabled = false;
            }
           
        }

        protected void ddlCountries_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCountries.SelectedValue != "-1")
            {
                ddlCities.Enabled = true;

                SqlParameter sqlpp = new SqlParameter("@CountryId", ddlCountries.SelectedValue);
                DataSet dss = new DataSet();
                dss = GetData("spGetCitiesByCountryId", sqlpp);
                ddlCities.DataSource = dss;
                ddlCities.DataBind();

                ListItem selectCity = new ListItem("Select City", "-1");
                ddlCities.Items.Insert(0, selectCity);
            }
            else
            {
                ddlCities.SelectedValue = "-1";
                ddlCities.Enabled = false;
            }

        }
    }
}