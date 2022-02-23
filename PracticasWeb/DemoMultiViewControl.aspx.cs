using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticasWeb
{
    public partial class DemoMultiViewControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                multiViewEmployee.ActiveViewIndex = 0;
            }
        }

        protected void btnGoToStep2_Click(object sender, EventArgs e)
        {
            multiViewEmployee.ActiveViewIndex = 1;
        }

        protected void btnBackToStep1_Click(object sender, EventArgs e)
        {
            multiViewEmployee.ActiveViewIndex = 0;
        }

        protected void btnGoToStep3_Click(object sender, EventArgs e)
        {
            multiViewEmployee.ActiveViewIndex = 2;

            lblFirstName.Text = txtFirstName.Text;
            lblLastName.Text = txtLastName.Text;
            lblEmail.Text = txtEmail.Text;
            lblMobile.Text = txtMobile.Text;
            lblGender.Text = ddlGender.SelectedItem.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            multiViewEmployee.ActiveViewIndex = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
    }
}