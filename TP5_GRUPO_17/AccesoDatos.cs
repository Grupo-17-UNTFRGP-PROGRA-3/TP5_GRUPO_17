﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace TP5_GRUPO_17
{
	public class AccesoDatos
	{
		//private const string cadenaConexion = @"Data Source=DESKTOP-7N6K8KD\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True;Encrypt=False";
		private const string cadenaConexion = @"Data Source= localhost\sqlexpress; Initial Catalog=BDSucursales;Integrated Security=True;Encrypt=False";
        private SqlConnection conexion = new SqlConnection(cadenaConexion);

        public DataTable ObtenerTablas(string consultaSQL, string nombreTabla)
        {
            conexion.Open();

            SqlDataAdapter dataAdapter = new SqlDataAdapter(consultaSQL, conexion);
            DataSet dataSet = new DataSet();

            dataAdapter.Fill(dataSet, nombreTabla);

            conexion.Close();

            return dataSet.Tables[nombreTabla];
        }
        public int EjecutarConsulta(string consultaSQL)
        {
            conexion.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSQL, conexion);
            int filasAfectadas = sqlCommand.ExecuteNonQuery();

            conexion.Close();

            return filasAfectadas;
        }
    }
}