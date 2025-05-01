using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_17
{
	public partial class EliminarSucursales : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                Negocio negocio = new Negocio();
                DataTable sucursales = new DataTable();
                sucursales = negocio.ObtenerSucursales();
                gvSucursales.DataSource = sucursales;
                gvSucursales.DataBind();
            }
        }

        protected void btnEliminarSucursal_Click(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();

            if (negocio.EliminarSucursal(txtSucursalAEliminar.Text) == 1)
            {
                lblMensaje.Text = "La sucursal se ha eliminado con éxito";

                DataTable sucursales = new DataTable();
                sucursales = negocio.ObtenerSucursales();
                gvSucursales.DataSource = sucursales;
                gvSucursales.DataBind();
            }
            else
            {
                lblMensaje.Text = "Ingrese una ID válida";
            }

            txtSucursalAEliminar.Text = string.Empty;
        }

        protected void txtSucursalAEliminar_TextChanged(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            DataTable sucursales = new DataTable();
            if (txtSucursalAEliminar.Text != "")
            {
                string filtro = " WHERE S.Id_Sucursal = " + txtSucursalAEliminar.Text;
                sucursales = negocio.ObtenerSucursales(filtro);

                gvSucursales.DataSource = sucursales;
                gvSucursales.DataBind();
                if (gvSucursales.Rows.Count == 1)
                {
                    lblMensaje.Text = "Aqui se visualiza el registro a eliminar";
                }
                else
                {
                    lblMensaje.Text = "No hay registros con ese ID";
                }
            }
            else
            {
                sucursales = negocio.ObtenerSucursales();
                gvSucursales.DataSource = sucursales;
                gvSucursales.DataBind();
                lblMensaje.Text = string.Empty;
            }
        }
    }
}