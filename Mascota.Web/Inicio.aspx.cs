using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mascota.Web
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                ServicioMascota.Usuario user;
                user = (ServicioMascota.Usuario)Session["Usuario"];

                lblSaludo.Text = "Bienvenido: " + user.Nombres + " " + user.Apellidos;
            }
        }
    }
}