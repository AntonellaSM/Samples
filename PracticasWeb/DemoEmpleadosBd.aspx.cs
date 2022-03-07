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
    public partial class DemoEmpleadosBd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            //EmpleadoClase em = new EmpleadoClase()
            //{
            //    Nombre = txtNombre.Text,
            //    Apellido = txtApellido.Text,
            //    Genero = txtGenero.Text,
            //    Gerencia = txtGerencia.Text,
            //    Telefono = txtTelefono.Text,
            //    Email = txtEmail.Text
            //};

            string cs = ConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString;

           using(SqlConnection sqlcon= new SqlConnection(cs))
            {
                string query = "INSERT INTO empleados (Nombre, Apellido, Genero, Gerencia, Telefono, Email) values (@Nombre,@Apellido,@Genero,@Gerencia,@Telefono,@Email)";
                SqlCommand sqlcom = new SqlCommand(query,sqlcon);

                sqlcom.Parameters.AddWithValue("@Nombre", txtNombre.Text);
                sqlcom.Parameters.AddWithValue("@Apellido", txtApellido.Text);
                sqlcom.Parameters.AddWithValue("@Genero", txtGenero.Text);
                sqlcom.Parameters.AddWithValue("@Gerencia", txtGerencia.Text);
                sqlcom.Parameters.AddWithValue("@Telefono", txtTelefono.Text);
                sqlcom.Parameters.AddWithValue("@Email", txtEmail.Text);

                sqlcon.Open();

                sqlcom.ExecuteNonQuery();
            }
            // Response.Redirect("~/ConfirmacionAltaEmpleado.aspx");
            Server.Transfer("~/ConfirmacionAltaEmpleado.aspx");
            
        }

   
    }
}