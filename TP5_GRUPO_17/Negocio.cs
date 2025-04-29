using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace TP5_GRUPO_17
{
    public class Negocio
    {
        AccesoDatos conexion = new AccesoDatos();
        public DataTable ObtenerProvincias()
        {
            string consultaSQL = "SELECT * FROM Provincia";
            string nombreTabla = "Provincias";

            return conexion.ObtenerTablas(consultaSQL, nombreTabla);
        }
        public DataTable ObtenerSucursales()
        {
            string consultaSQL = "SELECT S.Id_Sucursal, S.NombreSucursal AS Nombre, S.DescripcionSucursal AS Descripción," +
                " P.DescripcionProvincia AS Provincia, S.DireccionSucursal AS Dirección " +
                "FROM Sucursal AS S " +
                "INNER JOIN Provincia AS P ON S.Id_ProvinciaSucursal = P.Id_Provincia";
            string nombreTabla = "Sucursales";

            return conexion.ObtenerTablas(consultaSQL, nombreTabla);
        }
        public DataTable ObtenerSucursales(string filtro)
        {
            string consultaSQL = "SELECT S.Id_Sucursal, S.NombreSucursal AS Nombre, S.DescripcionSucursal AS Descripción," +
                " P.DescripcionProvincia AS Provincia, S.DireccionSucursal AS Dirección " +
                "FROM Sucursal AS S " +
                "INNER JOIN Provincia AS P ON S.Id_ProvinciaSucursal = P.Id_Provincia" + filtro;
            string nombreTabla = "Sucursales";

            return conexion.ObtenerTablas(consultaSQL, nombreTabla);
        }
    }
}