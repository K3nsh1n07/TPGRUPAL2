using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;

namespace TPGRUPAL2
{
    public partial class IngresoAlumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            ConexionDBDataContext instancia = new ConexionDBDataContext();
            Alumno persona = new Alumno();
            persona.nombre = tnombre.Text;
            persona.apellido = tapellido.Text;
            persona.dni = Convert.ToInt32(tdni.Text);
            persona.email = temail.Text;
            persona.turno = sTurnos.SelectedItem.Text;

            instancia.Alumnos.InsertOnSubmit(persona);
            instancia.SubmitChanges();

            crearSesion(sender, e);
            Response.Redirect("MostrarDatos.aspx");
            //label1.Visible = true;
            //label1.Text = "Texto del click";
            //label1.ForeColor = Color.Red;
            
        }

        protected void crearSesion(object sender, EventArgs e)
        {
            Page.Session["nombre"] = tnombre.Text;
            Page.Session["apellido"] = tapellido.Text;
            Page.Session["dni"] = Convert.ToInt32(tdni.Text);
            Page.Session["email"] = temail.Text;
            Page.Session["turno"] = sTurnos.SelectedItem.Text;
        }
    }
}