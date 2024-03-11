using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mascota.Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            ServicioMascota.Service1Client cliente = new ServicioMascota.Service1Client();

            ServicioMascota.Usuario user = cliente.Validar(txtUsuario.Text, txtPassword.Text);

            if (user != null)
            {
                Session["Usuario"] = user;
                Response.Redirect("~/Inicio.aspx");
            }
            else
            {
                lblMensaje.Text = "Usuario o contraseña incorrectos.";
            }
        }
    }
}
