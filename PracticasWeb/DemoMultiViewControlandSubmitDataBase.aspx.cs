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
    public partial class DemoMultiViewControlandSubmitDataBase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void btnGoToStep2_Click(object sender, EventArgs e)
        {
            if ((RequiredFieldValidator1.IsValid)&&(RequiredFieldValidator2.IsValid)&& (RequiredFieldValidator3.IsValid))
            {
                MultiView1.ActiveViewIndex = 1;
            }

        }

        protected void btnGoToStep3_Click(object sender, EventArgs e)
        {
            if ((RequiredFieldValidator4.IsValid)&& (RequiredFieldValidator5.IsValid))
            {
                MultiView1.ActiveViewIndex = 2;

                lblFirstName.Text = txtFirstName.Text;
                lblSurname.Text = txtSurname.Text;
                lblGender.Text = ddlGender.SelectedItem.Text;
                lblEmail.Text = txtEmail.Text;
                lblMobileNumber.Text = txtMobileNumber.Text;
            }
            
        }

        protected void btnGoToStep1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnGoToPreviousStep2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["Sample"].ConnectionString;

            using(SqlConnection sqlc= new SqlConnection(cs))
            {
                string queryInsert = "INSERT INTO Employees (FirstName,SurName,Gender,Email,MobileNumber) values (@FirstName,@Surname,@Gender,@Email,@MobileNumber)";

                SqlCommand sqlcommand = new SqlCommand(queryInsert,sqlc);

                sqlcommand.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                sqlcommand.Parameters.AddWithValue("@Surname", txtSurname.Text);

                //GENDER is bit.. 0 male   1 female
                sqlcommand.Parameters.AddWithValue("@Gender", ddlGender.SelectedItem.Text);
                sqlcommand.Parameters.AddWithValue("@Email", txtEmail.Text);
                sqlcommand.Parameters.AddWithValue("@MobileNumber", txtMobileNumber.Text);

                sqlc.Open();

                sqlcommand.ExecuteNonQuery();

                lblDataSaved.Text = "Thank you! Your data has been saved correctly.";

            }


        }
    }
}