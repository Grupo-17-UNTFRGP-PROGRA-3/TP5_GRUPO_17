using System;
using System.Collections.Generic;
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
        }

        protected void btnEliminarSucursal_Click(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();

            if (negocio.EliminarSucursal(txtSucursalAEliminar.Text) == 1)
            {
                lblMensaje.Text = "La sucursal se ha eliminado con éxito";
            }
            else
            {
                lblMensaje.Text = "Ingrese una ID válida";
            }
        }
    }
}