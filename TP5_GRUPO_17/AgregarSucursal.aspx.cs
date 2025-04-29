using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_17
{
	public partial class AgregarSucursal : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
			{
				Negocio negocio = new Negocio();
				DataTable provincias = new DataTable();

				provincias = negocio.ObtenerProvincias();

				ddlProvincia.DataSource = provincias;

				ddlProvincia.DataTextField = "DescripcionProvincia";
				ddlProvincia.DataValueField = "Id_Provincia";

				ddlProvincia.DataBind();
			}
		}
	}
}