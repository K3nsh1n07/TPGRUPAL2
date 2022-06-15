using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TPGRUPAL2
{
    public partial class MostrarDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
            ConexionDBDataContext instancia = new ConexionDBDataContext();
            //IQueryable consultaLinq = (from t in instancia.Alumnos orderby t.id_alumno descending select new { t.id_alumno,t.nombre,t.apellido,t.dni,t.email,t.turno}).Take(1);
            IQueryable consultaLinq = (from t in instancia.Alumnos orderby t.id_alumno descending select new { t.id_alumno,t.nombre,t.apellido,t.dni,t.email,t.turno});
            //var query = (from t in instancia.Alumnos orderby t.id_alumno descending select new { t.id_alumno, t.nombre, t.apellido, t.dni, t.email, t.turno }).Take(1); ;
            //gvAlumnos.DataSource = consultaLinq;
            //gvAlumnos.DataBind();

            lblapellidoIngresado.InnerText = Page.Session["apellido"].ToString();
            lblnombreIngresado.InnerText = Page.Session["nombre"].ToString();
            lbldniIngresado.InnerText = Page.Session["dni"].ToString();
            lblemailIngresado.InnerText = Page.Session["email"].ToString();
            lblTurnoIngresado.InnerText = Page.Session["turno"].ToString();
        }

        protected void btn_enviar_click(object sender, EventArgs e)
        {
            ConexionDBDataContext instancia = new ConexionDBDataContext();
            Comentario coment = new Comentario();
            coment.dni = Convert.ToInt32(Page.Session["dni"].ToString());
            coment.apellido = Page.Session["apellido"].ToString();
            coment.texto = txtcomentario.Value;

            instancia.Comentarios.InsertOnSubmit(coment);
            instancia.SubmitChanges();
            
            Response.Redirect("IngresoAlumno.aspx");

        }
    }
}