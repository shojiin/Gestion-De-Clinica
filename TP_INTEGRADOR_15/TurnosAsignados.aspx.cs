using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_INTEGRADOR_15
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {           
            if (Session["Usuario"] == null)
            {
                // Si el Session no contiene el usuario, redirigir a la página de inicio de sesión
                Response.Redirect("Login.aspx");
            } else
            {
                lblNombreUsuario.Text = Session["Usuario"].ToString();
            }

            if (!IsPostBack)
            {
                cargarGridView();
            }
        }

        public void cargarGridView()
        {
            NegocioTurnos negocioTurnos = new NegocioTurnos();
            gvTurnos.DataSource = negocioTurnos.ObtenerTurnos();
            gvTurnos.DataBind();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            NegocioTurnos negocioTurnos = new NegocioTurnos();

            if (negocioTurnos.existeDNIPaciente(txtFiltrado.Text.Trim()))
            {
                DataTable dtFiltrado = negocioTurnos.filtrarTurnosPorPaciente(txtFiltrado.Text.Trim());
                gvTurnos.DataSource = dtFiltrado;
                gvTurnos.DataBind();

                lblPacienteInexistente.Text = string.Empty; // Limpiar mensaje de error si se encuentra el DNI del paciente
            }
            else 
            { 
                lblPacienteInexistente.Text = "El DNI del paciente no existe."; // Mostrar mensaje de error si no se encuentra el DNI del paciente
            }

            // Limpiar el textBox después de filtrar
            txtFiltrado.Text = string.Empty;
        }

        protected void btnReiniciar_Click(object sender, EventArgs e)
        {
            cargarGridView();
            txtFiltrado.Text = string.Empty;
            lblPacienteInexistente.Text = string.Empty;
        }
    }
}