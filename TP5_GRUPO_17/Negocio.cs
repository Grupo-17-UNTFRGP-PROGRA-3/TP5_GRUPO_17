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
        public DataTable ObtenerHorarios(string IdSucursal = "All")
        {
            if (IdSucursal == "All")
            {
                string consultaSQL = "SELECT * FROM Horario";
                string nombreTabla = "Horarios";
                return conexion.ObtenerTablas(consultaSQL, nombreTabla);
            }
            else
            {
                string consultaSQL = "SELECT DescripcionHorario FROM Horario WHERE Id_Horario = " +
                    "(Select Id_HorarioSucursal from Sucursal where Id_Sucursal = " + IdSucursal + ")";
                string nombreTabla = "Horarios";
                return conexion.ObtenerTablas(consultaSQL, nombreTabla);
            }
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
        public int AgregarSucursal(string nombre, string descripcion, string idProvincia, string direccion)
        {
            string consultaSQL = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) VALUES('" +
                                     nombre + "', '" +
                                     descripcion + "', '" +
                                     idProvincia + "', '" +
                                     direccion + "')";

            return conexion.EjecutarConsulta(consultaSQL);
        }
        public int AgregarSucursal(string nombre, string descripcion, string idProvincia, string direccion, string idHorario)
        {
            string consultaSQL = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal," +
                " Id_HorarioSucursal ) VALUES('" +
                                     nombre + "', '" +
                                     descripcion + "', '" +
                                     idProvincia + "', '" +
                                     direccion + "', '" +
                                     idHorario + "')";

            return conexion.EjecutarConsulta(consultaSQL);
        }
        public int EliminarSucursal(string idSucursal)
        {
            string consultaSQL = "DELETE FROM Sucursal WHERE Id_Sucursal = '" + idSucursal + "'";
            return conexion.EjecutarConsulta(consultaSQL);
        }
    }
}