﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TMusicWeb
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class tmEntities : DbContext
    {
        public tmEntities()
            : base("name=tmEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AVISO> AVISO { get; set; }
        public virtual DbSet<BOLETA> BOLETA { get; set; }
        public virtual DbSet<ESTILO_MUSICAL> ESTILO_MUSICAL { get; set; }
        public virtual DbSet<FORMA_PAGO> FORMA_PAGO { get; set; }
        public virtual DbSet<REGION> REGION { get; set; }
        public virtual DbSet<REPORTE> REPORTE { get; set; }
        public virtual DbSet<TIPO_AVISO> TIPO_AVISO { get; set; }
        public virtual DbSet<TIPO_PRODUCTO> TIPO_PRODUCTO { get; set; }
        public virtual DbSet<TIPO_REPORTE> TIPO_REPORTE { get; set; }
        public virtual DbSet<USUARIO> USUARIO { get; set; }
        public virtual DbSet<USUARIO_BANDA> USUARIO_BANDA { get; set; }
        public virtual DbSet<USUARIO_SOLISTA> USUARIO_SOLISTA { get; set; }
    }
}
