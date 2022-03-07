using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticasWeb
{
    public partial class DemoServerTransfer2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //            This page previous property is initializzed only a server.transfer method or when you do a cross page post back .
            //This is NOT going to function if we have used  response.redirect…. the page previous property Will be null.

            //technique one:

            //Page previousPage = Page.PreviousPage;
            //if (previousPage != null)
            //{
            //    lblName.Text = ((TextBox)previousPage.FindControl("txtName")).Text;
            //    lblEmail.Text = ((TextBox)previousPage.FindControl("txtEmail")).Text;
            //}

            //technique two:
            var formPrevious = Request.Form;
            lblName.Text=formPrevious["txtName"];
            lblEmail.Text = formPrevious["txtEmail"];
        }
    }
}