using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TMusicWeb
{
    public class Usuario
    {
		private int id;
		private string nombre;
		private string apellido;
		private string mail;
		private string pass;
		private string tipoUsuario;

		public Usuario()
		{
		}

		public int _id
		{
			get { return id; }
			set { id = value; }
		}

		public string _nombre
		{
			get { return nombre; }
			set { nombre = value; }
		}

		public string _apellido
		{
			get { return apellido; }
			set { apellido = value; }
		}

		public string _mail
		{
			get { return mail; }
			set { mail = value; }
		}

		public string _pass
		{
			get { return pass; }
			set { pass = value; }
		}

		public string _tipoUsuario
		{
			get { return tipoUsuario; }
			set { tipoUsuario = value; }
		}

		public Usuario(int id, string nombre, string apellido, string mail, string pass, string tipoUsuario)
		{
			this.id = id;
			this.nombre = nombre;
			this.apellido = apellido;
			this.mail = mail;
			this.pass = pass;
			this.tipoUsuario = tipoUsuario;
		}

		

	}
}