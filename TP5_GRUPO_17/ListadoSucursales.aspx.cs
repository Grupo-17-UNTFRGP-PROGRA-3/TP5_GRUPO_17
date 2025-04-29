using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_17
{
	public partial class ListadoSucursales : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                Negocio negocio = new Negocio();
                DataTable sucursales = new DataTable();

                sucursales = negocio.ObtenerSucursales();

                gvSucursales.DataSource = sucursales;
                gvSucursales.DataBind();
            }
        }
	}
}