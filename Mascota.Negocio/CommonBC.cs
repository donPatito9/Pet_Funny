using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mascota.Dalc;

namespace Mascota.Negocio
{
    public class CommonBC
    {
        private static PetFunnyEntities _modeloPetFunny;
        public static PetFunnyEntities ModeloPetFunny
        {
          get
            {
              if (_modeloPetFunny == null)
                {
                  _modeloPetFunny = new PetFunnyEntities();
                }

              return _modeloPetFunny;
           }
        }
        public CommonBC()
        {
        }
    }
}
