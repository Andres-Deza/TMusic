using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TMusicWeb.Clases
{
    public class Aviso
    {
		private int id_aviso;
		private string nom_prod;
		private string marca;
		private string tip_aviso;
		private string tip_producto;
		private int precio;
		private string ubicacion;
		private DateTime fecha;
		private string descripcion;
		private string vendedor;

		public Aviso()
		{
		}

		public string _vendedor
		{
			get { return vendedor; }
			set { vendedor = value; }
		}


		public String _descripcion
		{
			get { return descripcion; }
			set { descripcion = value; }
		}


		


		public string _nomprod
		{
			get { return nom_prod; }
			set { nom_prod = value; }
		}


		public DateTime _fecha
		{
			get { return fecha; }
			set { fecha = value; }
		}


		public string _ubicacion
		{
			get { return ubicacion; }
			set { ubicacion = value; }
		}


		public int _precio
		{
			get { return precio; }
			set { precio = value; }
		}


		public string _tipproducto
		{
			get { return tip_producto; }
			set { tip_producto = value; }
		}


		public string _tipaviso
		{
			get { return tip_aviso; }
			set { tip_aviso = value; }
		}



		public string _marca
		{
			get { return marca; }
			set { marca = value; }
		}

		public int _idaviso
		{
			get { return id_aviso; }
			set { id_aviso = value; }
		}
	}
}