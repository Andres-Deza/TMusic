using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TMusicWeb.Clases
{
    public class UsuarioController
    {

		private static tmEntities context = new tmEntities();

		public static string crearUsuario(int id, string nombre, string apellido, string mail, string pass, string tipoUsuario)
		{


			try
			{
				context.USUARIO.Add(new USUARIO()
			{
				ID_USUARIO = id,
				NOMBRE = nombre,
				APELLIDO = apellido,
				CORREO = mail,
				CONTRASENA = pass,
				ESTADO_CUENTA="1"

			});
				context.SaveChanges();
			}
			catch (Exception e)
			{

				return e.ToString();
			}
			
			return null;
		}

		public static void CrearAdmin()
		{
			crearUsuario(1, "marco", "polo", "admin@gmail.com", "admin", "admin");
		}

		public static USUARIO buscarUsuarioCorreo(string correo)
		{
			foreach (USUARIO c in context.USUARIO)
			{
				if (c.CORREO==correo)
				{
					return c;
				}
			}
			return null;
		}
	}
}