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
    
    public partial class AVISO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AVISO()
        {
            this.BOLETA = new HashSet<BOLETA>();
            this.REPORTE = new HashSet<REPORTE>();
        }
    
        public int ID_AVISO { get; set; }
        public int ID_CIUDAD { get; set; }
        public int ID_TIP_AVISO { get; set; }
        public int ID_TIPO_PRODUCTO { get; set; }
        public byte[] FOTO { get; set; }
        public int PRECIO { get; set; }
        public string FECHA { get; set; }
        public string PRODUCTO { get; set; }
        public string VENDEDOR { get; set; }
        public string MARCA { get; set; }
        public string DESCRIPCION { get; set; }
    
        public virtual REGION REGION { get; set; }
        public virtual TIPO_AVISO TIPO_AVISO { get; set; }
        public virtual TIPO_PRODUCTO TIPO_PRODUCTO { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BOLETA> BOLETA { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<REPORTE> REPORTE { get; set; }
    }
}
