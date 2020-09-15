using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TMusicWeb
{
    public class Banda : Usuario
    {
		
		private string nombreBanda;
		private string ubicacion;
		private string estilo;
		private string influencia;
		private string descripcion;



		private int id_banda;

		public int _banda
		{
			get { return id_banda; }
			set { id_banda = value; }
		}


		public Banda()
		{
		}

		public string _nombreBanda
		{
			get { return nombreBanda; }
			set { nombreBanda = value; }
		}

		public string _ubicacion
		{
			get { return ubicacion; }
			set { ubicacion = value; }
		}

		public string _estilo
		{
			get { return estilo; }
			set { estilo = value; }
		}

		public string _influencia
		{
			get { return influencia; }
			set { influencia = value; }
		}

		public string _descripcion
		{
			get { return descripcion; }
			set { descripcion = value; }
		}
	}
}