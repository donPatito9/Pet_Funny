﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Mascota.Dalc
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PetFunnyEntities : DbContext
    {
        public PetFunnyEntities()
            : base("name=PetFunnyEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Alojamiento> Alojamiento { get; set; }
        public virtual DbSet<Propietario> Propietario { get; set; }
        public virtual DbSet<TipoAlojamiento> TipoAlojamiento { get; set; }
        public virtual DbSet<TipoMascota> TipoMascota { get; set; }
        public virtual DbSet<Usuarios> Usuarios { get; set; }

        public void SaveChanges()
        {
            throw new NotImplementedException();
        }
    }
}