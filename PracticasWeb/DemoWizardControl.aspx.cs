using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticasWeb
{
    public partial class DemoWizardControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex == 2)
            {//index 2 is the final step. SUMMARY.
                lblNombre.Text = txtNombre.Text;
                lblApellido.Text = txtApellido.Text;
                lblGenero.Text = ddlGenero.SelectedItem.Text;
                lblEmail.Text = txtEmail.Text;
                lblCelular.Text = txtCelular.Text;              
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            //ADO.NET for saving to database

            string cs = ConfigurationManager.ConnectionStrings["Sample"].ConnectionString;

            using (SqlConnection sqlconn = new SqlConnection(cs))
            {
                string queryInsert = "INSERT INTO employees (FirstName,SurName,Gender,Email,MobileNumber) values (@Nombre,@Apellido,@Genero,@Email,@Celular)";

                SqlCommand sqlcommand = new SqlCommand(queryInsert,sqlconn);

                sqlcommand.Parameters.AddWithValue("@Nombre", txtNombre.Text);
                sqlcommand.Parameters.AddWithValue("@Apellido", txtApellido.Text);
                sqlcommand.Parameters.AddWithValue("@Genero", ddlGenero.SelectedItem.Text);
                sqlcommand.Parameters.AddWithValue("@Email", txtEmail.Text);
                sqlcommand.Parameters.AddWithValue("@Celular", txtCelular.Text);

                sqlconn.Open();

                sqlcommand.ExecuteNonQuery();
            }

            Response.Redirect("~/ConfirmationPage.aspx");
        }
    }
}