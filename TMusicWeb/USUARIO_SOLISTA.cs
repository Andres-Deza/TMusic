//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class USUARIO_SOLISTA
    {
        public int ID_SOLISTA { get; set; }
        public string CORREO { get; set; }
        public string CONTRASENA { get; set; }
        public string NOMBRE { get; set; }
        public string APELLIDO { get; set; }
        public string ESTADO_CUENTA { get; set; }
        public Nullable<int> ID_ESTILO { get; set; }
        public Nullable<int> ID_CIUDAD { get; set; }
        public string APODO { get; set; }
        public string INFLUENCIAS { get; set; }
        public string DESCRIPCION { get; set; }
    
        public virtual ESTILO_MUSICAL ESTILO_MUSICAL { get; set; }
        public virtual REGION REGION { get; set; }
    }
}
