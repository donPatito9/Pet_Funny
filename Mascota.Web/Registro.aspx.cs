using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mascota.Web
{
    public partial class Registro : System.Web.UI.Page
    {
        public Mascota.Negocio.Propietario CargarDePropietario()
        {
            Mascota.Negocio.Propietario pr = new Mascota.Negocio.Propietario()
            {

                Rut = txtRut.Text,
                Nombres = txtNombre.Text,
                Apellidos = txtApellido.Text,
                Fono = txtFono.Text
            };

            return pro;
        }

        public Mascota.Negocio.Alojamiento CargarDeAlojamiento()
        {
            Mascota.Negocio.Alojamiento aloja = new Mascota.Negocio.Alojamiento()
            {
                rut = txtRut.Text,
                NombreMascota = txtNomMasc.Text,
                idTipoMascota = int.Parse(ddlTipoMascota.Text),
                idTipoAlojamiento = int.Parse(ddlTipoAlojamiento.Text),
                FechaIngreso = DateTime.Now,
                dias = int.Parse(txtDias.Text)

            };
            return aloja;
        }
        private void CargarUIDePropietario(Mascota.Negocio.Propietario pro)
        {
            txtRut.Text = pro.Rut;
            txtNombre.Text = pro.Nombres;
            txtApellido.Text = pro.Apellidos;
            txtFono.Text = pro.Fono;
        }
        private void CargarUIDeAlojamiento(Mascota.Negocio.Alojamiento aloja)
        {
            txtRut.Text = aloja.rut;
            txtNomMasc.Text = aloja.NombreMascota;
            ddlTipoMascota.Text = aloja.idTipoMascota.ToString();
            ddlTipoAlojamiento.Text = aloja.idTipoAlojamiento.ToString();
            txtFecha.Text = aloja.FechaIngreso.ToString();
            txtDias.Text = aloja.dias.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtFecha.Text = Calendar1.SelectedDate.ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                Mascota.Negocio.Propietario pro = CargarDePropietario();
                if (pro.Create())
                {
                    estado.Text = "Datos ingresados con exito.";

                }
                else
                {
                    estado.Text = "Datos no fueron agregados.";
                }

            }
            catch (Exception ex)
            {
                estado.Text = "Se produjo un error al intentar agregar datos.";
            }
            try
            {
                Mascota.Negocio.Alojamiento aloja = CargarDeAlojamiento();
                if (aloja.Create())
                {
                    estado.Text = "Datos ingresados con exito.";

                }
                else
                {
                    estado.Text = "Datos de alojamiento no pudieron ser agregados.";
                }

            }
            catch (Exception ex)
            {
                estado.Text = "se produjo un error al agregar los datos";            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            txtFecha.Text = Calendar1.SelectedDate.ToString();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Modificar.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ListaAlojamiento.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Eliminar.aspx");
        }
    }
}