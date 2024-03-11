using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mascota.Negocio
{
    public class CollectionAlojamiento
    {
        public List<Alojamiento> ReadAll()
        {
            var alojamientos = CommonBC.ModeloPetFunny.Alojamiento;
            return GenerarListado(alojamientos.ToList());
        }
        private List<Alojamiento> GenerarListado(List<Mascota.Dalc.Alojamiento> alojamientosDalc)
        {
            List<Mascota.Negocio.Alojamiento> alojamientos = new List<Alojamiento>();

            foreach (Mascota.Dalc.Alojamiento aloja in alojamientosDalc)
            {
                Mascota.Negocio.Alojamiento alojamiento = new Alojamiento();
                alojamiento.rut = aloja.Rut;
                alojamiento.NombreMascota = aloja.NombreMascota;
                alojamiento.idTipoMascota = aloja.IdTipoMascota;
                alojamiento.idTipoAlojamiento = aloja.IdTipoAlojamiento;
                alojamiento.FechaIngreso = aloja.FechaIngreso;
                alojamiento.dias = aloja.Dias;
                alojamientos.Add(alojamiento);
            }
            return alojamientos;
        }
    }
}

