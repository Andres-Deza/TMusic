using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TMusicWeb
{
    public class Solista : Usuario
    {
		private string apodo;
		private string ubicacion;
		private string estilo;
		private string influencia;
		private string descripcion;

		public Solista()
		{
		}

		public string _apodo
		{
			get { return apodo; }
			set { apodo = value; }
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