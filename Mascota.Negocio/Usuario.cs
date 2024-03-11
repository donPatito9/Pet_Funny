using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mascota.Dalc;
namespace Mascota.Negocio
{
    public class Usuario
    {
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        private Mascota.Dalc.PetFunnyEntities entidades;
        public Usuario()
        {
            entidades = new Mascota.Dalc.PetFunnyEntities();
        }
        public int Buscar()
        {
            int res = 0;
            Mascota.Dalc.Usuarios user = null;

            user = entidades.Usuarios.FirstOrDefault(a => a.UserName == this.UserName && a.Password == this.Password);

            if (user != null)
            {
                this.Nombres = user.Nombres;
                this.Apellidos = user.Apellidos;
                res = 1;
            }
            else
            {
                res = 0;
            }
            return res;
        }
    }
}
