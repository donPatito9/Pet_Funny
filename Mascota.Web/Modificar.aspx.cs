using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mascota.Web
{
    public partial class Modificar : System.Web.UI.Page
    {
        public Mascota.Negocio.Propietario CargarDePropietario()
        {
            Mascota.Negocio.Propietario pro = new Mascota.Negocio.Propietario()
            {
                Rut = txtRut.Text,
                Nombres = txtNombre.Text,
                Apellidos = txtApellido.Text,
                Fono = txtFono.Text
            };

            return pro;
        }
        private void CargarUIDePropietario(Mascota.Negocio.Propietario pro)
        {
            txtRut.Text = pro.Rut;
            txtNombre.Text = pro.Nombres;
            txtApellido.Text = pro.Apellidos;
            txtFono.Text = pro.Fono;
        }
        public Mascota.Negocio.Alojamiento CargarDeAlojamiento()
        {
            Mascota.Negocio.Alojamiento aloja = new Mascota.Negocio.Alojamiento()
            {

                rut = txtRut.Text,
                NombreMascota = txtNomMasc.Text,
                idTipoMascota = int.Parse(ddlTipoMascota.Text),
                idTipoAlojamiento = int.Parse(ddlTipoAlojamiento.Text),
                FechaIngreso = DateTime.Now.Date,
                dias = int.Parse(txtDias.Text)

            };

            return aloja;
        }
        private void CargarUIDeAlojamiento(Mascota.Negocio.Alojamiento aloja)
        {
            txtRut.Text = aloja.rut;
            txtNomMasc.Text = aloja.NombreMascota;
            ddlTipoMascota.Text = aloja.idTipoMascota.ToString();
            ddlTipoAlojamiento.Text = aloja.idTipoAlojamiento.ToString();
            txtFecha.Text = DateTime.Now.Date.ToString();
            txtDias.Text = aloja.dias.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtFecha.Text = Calendar1.SelectedDate.Date.ToString();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                Mascota.Negocio.Propietario pro = CargarDePropietario();

                if (pro.Update())
                {
                    CargarUIDePropietario(pro);
                    estado2.Text = "Datos actualizados con exito";
                }
                else
                {
                    estado2.Text = "no se pudo actualizar";
                }

            }
            catch (Exception ex)
            {
                estado2.Text = "Se produjo un error al actualizar los datos.";
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                Mascota.Negocio.Alojamiento aloja = CargarDeAlojamiento();

                if (aloja.Update())
                {
                    CargarUIDeAlojamiento(aloja);
                    estado.Text = "Datos de actualizados con exito.";
                }
                else
                {
                    estado.Text = "No pudo ser actualizado.";
                }

            }
            catch (Exception ex)
            {
                estado.Text = "Se produjo un error alactualizar los datos de Mascota.";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
               Mascota.Negocio.Propietario pro = CargarDePropietario();

                if (pro.Read())
                {
                    CargarUIDePropietario(pro);
                    estado.Text = "Datos leidos con exito.";
                }
                else
                {
                    estado.Text = "No se pudo leer.";
                }

            }
            catch (Exception ex)
            {
                estado.Text = "Se produjo un error al intentar leer los datos.";
            }
            try
            {
                Mascota.Negocio.Alojamiento aloja = CargarDeAlojamiento();

                if (aloja.Read())
                {
                    CargarUIDeAlojamiento(aloja);
                    estado.Text = "Datos Encontrados con exito.";
                }
                else
                {
                    estado.Text = "No se pudo leer.";
                }
            }
            catch (Exception ex)
            {
                estado.Text = "Se produjo un error al  leer los datos.";
            }
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
} 
