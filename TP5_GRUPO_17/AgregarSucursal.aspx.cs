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
                ddlProvincia.Items.Insert(0, new ListItem("--Seleccionar--", ""));

				DataTable horarios = new DataTable();
                horarios = negocio.ObtenerHorarios();
				ddlHorarios.DataSource = horarios;
				ddlHorarios.DataTextField = "DescripcionHorario";
				ddlHorarios.DataValueField = "Id_Horario";
				ddlHorarios.DataBind();
                ddlHorarios.Items.Insert(0, new ListItem("--Seleccionar--", ""));

			}
		}
        protected void btnAceptar_Click(object sender, EventArgs e)
        {
			if (ddlHorarios.SelectedValue == "")
            {
				try
				{
					Negocio negocio = new Negocio();
					negocio.AgregarSucursal(txtNombreSucursal.Text, txtDescripcion.Text, ddlProvincia.SelectedValue,
						txtDireccion.Text);

					lblMensajeExito.Text = "La sucursal se ha agregado con exito";
				}
				catch
				{
					lblMensajeExito.Text = "Error al agregar la sucursal";
				}
            }
			else
			{
                try
                {
                    Negocio negocio = new Negocio();
                    negocio.AgregarSucursal(txtNombreSucursal.Text, txtDescripcion.Text, ddlProvincia.SelectedValue, 
						txtDireccion.Text, ddlHorarios.SelectedValue);
                    lblMensajeExito.Text = "La sucursal se ha agregado con exito";
                }
                catch
                {
                    lblMensajeExito.Text = "Error al agregar la sucursal";
                }
            }
			LimpiarCampos();
        }

		private void LimpiarCampos()
		{
			txtNombreSucursal.Text = string.Empty;
			txtDescripcion.Text = string.Empty;
			txtDireccion.Text = string.Empty;
			ddlProvincia.SelectedIndex = 0;
			ddlHorarios.SelectedIndex = 0;
        }
    }
}