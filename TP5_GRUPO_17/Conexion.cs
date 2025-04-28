using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace TP5_GRUPO_17
{
	public class Conexion
	{
		private const string cadenaConexion= @"Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales;Integrated Security=True\";
		public int ejecutarTransaccion(string consultaSQL)
		{
			SqlConnection conexion = new SqlConnection(cadenaConexion);
			conexion.Open();

			SqlCommand sqlCommand = new SqlCommand(consultaSQL, conexion);
			int filasAfectadas= sqlCommand.ExecuteNonQuery();
			
			return filasAfectadas;
		}
    }

}