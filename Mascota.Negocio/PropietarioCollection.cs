using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mascota.Negocio
{
    public class PropietarioCollection
    {
        public List<Propietario> ReadAll()
        {
            var propietarios = CommonBC.ModeloPetFunny.Propietario;
            return GenerarListado(propietarios.ToList());
        }
        private List<Propietario> GenerarListado(List<Mascota.Dalc.Propietario> propietariosDalc)
        {
            List<Mascota.Negocio.Propietario> propietarios = new List<Propietario>();

            foreach (Mascota.Dalc.Propietario pro in propietariosDalc)
            {
                Mascota.Negocio.Propietario propietario = new Propietario();

                propietario.Rut = pro.Rut;
                propietario.Nombres = pro.Nombres;
                propietario.Apellidos = pro.Apellidos;
                propietario.Fono = pro.Telefono;
                propietarios.Add(propietario);
            }
            return propietarios;
        }
    }
}
