using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mascota.Web
{
    public partial class Eliminar : System.Web.UI.Page
    {
        private Mascota.Negocio.Alojamiento CargarBCAlojamiento()
        {
             Mascota.Negocio.Alojamiento aloja = new Mascota.Negocio.Alojamiento()
                {
                    rut = txtRut.Text

                };

                return aloja;
            }
        }
        private Mascota.Negocio.Propietario CargarBCPropietario()
        {
            Mascota.Negocio.Propietario pro = new Mascota.Negocio.Propietario()
            {
                Rut = txtRut.Text
            };
            return pro;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Mascota.Negocio.Alojamiento aloja = CargarBCAlojamiento;
                if (aloja.Delete())
                {
                    estado.Text = "Alojamiento eliminado";
                }
                else
                {
                    estado.Text = " No se elimino El Registro";
                }
            }
            catch (Exception ex)
            {
                estado.Text = "Se produjo un error al eliminar el alojammiento";
            }
            try
            {
                Mascota.Negocio.Propietario pro = CargarBCPropietario();
                if (pro.Delete())
                {
                    estado.Text = "Propietario eliminado";
                }
                else
                {
                    estado.Text = "No se elimino El Registro";
                }

            }
            catch (Exception ex)
            {
                estado.Text = "Se produjo un error al eliminar el Propietario";
            }
        }
    }

    