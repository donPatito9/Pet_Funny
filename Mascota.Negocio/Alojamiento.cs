using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mascota.Negocio
{
    public class Alojamiento
    {
        public string rut { get; set; }
        public string NombreMascota { get; set; }
        public int idTipoMascota { get; set; }
        public int idTipoAlojamiento { get; set; }
        public DateTime FechaIngreso { get; set; }
        public int dias { get; set; }

        public Alojamiento()
        {
            this.Init();
        }
        public void Init()
        {
            rut = string.Empty;
            NombreMascota = string.Empty;
            idTipoAlojamiento = 0;
            idTipoAlojamiento = 0;
            FechaIngreso = DateTime.Now.Date;
            dias = 0;
        }
        public bool Create()
        {
            Mascota.Dalc.Alojamiento aloja = new Dalc.Alojamiento();

            try
            {
                aloja.Rut = this.rut;
                aloja.NombreMascota = this.NombreMascota;
                aloja.IdTipoMascota = this.idTipoMascota;
                aloja.IdTipoAlojamiento = this.idTipoAlojamiento;
                aloja.FechaIngreso = this.FechaIngreso;
                aloja.Dias = this.dias;

                CommonBC.ModeloPetFunny.Alojamiento.Add(aloja);
                CommonBC.ModeloPetFunny.SaveChanges();
          
                return true;
            }
            catch (Exception ex)
            {
                CommonBC.ModeloPetFunny.Entry(aloja).State = System.Data.EntityState.Detached;
                return false;
            }
        }
        public bool Read()
        {
            try
            {
                Mascota.Dalc.Alojamiento alojamiento = CommonBC.ModeloPetFunny.Alojamiento.FirstOrDefault(aloja => aloja.Rut == this.rut);
                this.NombreMascota = "";
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Update()
        {
            try
            {
                Mascota.Dalc.Alojamiento alojMod = CommonBC.ModeloPetFunny.Alojamiento.First(aloja => aloja.Rut == this.rut);

                alojMod.Rut = this.rut;
                alojMod.NombreMascota = this.NombreMascota;
                alojMod.IdTipoMascota = this.idTipoMascota;
                alojMod.IdTipoAlojamiento = this.idTipoAlojamiento;
                alojMod.FechaIngreso = this.FechaIngreso;
                alojMod.Dias = this.dias;

                CommonBC.ModeloPetFunny.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Delete()
        {
            try
            {
                Mascota.Dalc.Alojamiento alojaDel = CommonBC.ModeloPetFunny.Alojamiento.First(aloja => aloja.Rut == this.rut);
                CommonBC.ModeloPetFunny.Alojamiento.Remove(alojaDel);
                CommonBC.ModeloPetFunny.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
