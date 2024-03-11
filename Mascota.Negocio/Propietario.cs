using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mascota.Negocio{

   public class Propietario : IPersistente
    {
        public string Rut { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Fono { get; set; }

        public Propietario()
        {
            this.Init();
        }
        public void Init()
        {
            Rut = string.Empty;
            Nombres = string.Empty;
            Apellidos = string.Empty;
            Fono = string.Empty;
        }
        public bool Create()
        {
            Mascota.Dalc.Propietario pro = new Dalc.Propietario();
            try
            {
                pro.Rut = this.Rut;
                pro.Nombres = this.Nombres;
                pro.Apellidos = this.Apellidos;
                pro.Telefono = this.Fono;

                CommonBC.ModeloPetFunny.Propietario.Add(pro);
                CommonBC.ModeloPetFunny.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                CommonBC.ModeloPetFunny.Entry(pro).State = System.Data.EntityState.Detached;
                return false;
            }
        }
        public bool Read()
        {
            try
            {
                Mascota.Dalc.Propietario propietario = CommonBC.ModeloPetFunny.Propietario.FirstOrDefault(prop => prop.Rut == this.Rut);

                this.Rut = propietario.Rut;
                this.Nombres = propietario.Nombres;
                this.Apellidos = propietario.Apellidos;
                this.Fono = propietario.Telefono;

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
                Mascota.Dalc.Propietario proMod = CommonBC.ModeloPetFunny.Propietario.First(pro => pro.Rut == this.Rut);
                proMod.Rut = this.Rut;
                proMod.Nombres = this.Nombres;
                proMod.Apellidos = this.Apellidos;
                proMod.Telefono = this.Fono;
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
                Mascota.Dalc.Propietario proDel = CommonBC.ModeloPetFunny.Propietario.First(pro => pro.Rut == this.Rut);
                CommonBC.ModeloPetFunny.Propietario.Remove(proDel);
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
    
