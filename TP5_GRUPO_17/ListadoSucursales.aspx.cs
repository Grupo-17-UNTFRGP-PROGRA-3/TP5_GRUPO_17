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

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            DataTable sucursales = new DataTable();

            string filtro = " WHERE S.Id_Sucursal = " + txtIdSucursal.Text;
            sucursales = negocio.ObtenerSucursales(filtro);

            gvSucursales.DataSource = sucursales;
            gvSucursales.DataBind();
            try
            {
                lblHorario.Text = negocio.ObtenerHorarios(txtIdSucursal.Text).Rows[0]["DescripcionHorario"].ToString();
            }
            catch 
            {
                lblHorario.Text = "Sin horario especificado";
            }
            txtIdSucursal.Text = string.Empty;
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            Negocio negocio = new Negocio();
            DataTable sucursales = new DataTable();

            sucursales = negocio.ObtenerSucursales();

            gvSucursales.DataSource = sucursales;
            gvSucursales.DataBind();
            txtIdSucursal.Text = string.Empty;
            lblHorario.Text = string.Empty;
        }
    }
}