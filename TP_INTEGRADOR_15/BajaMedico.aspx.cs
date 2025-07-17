using Negocio;
using System;
using System.Data;
using System.Web.UI.WebControls;

using Entidades;

namespace TP_INTEGRADOR_15
{
    public partial class BajaMedico : System.Web.UI.Page
    {
        NegocioMedicos negocio = new NegocioMedicos();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                // Si el Session no contiene el usuario, redirigir a la página de inicio de sesión
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblNombreUsuario.Text = Session["Usuario"].ToString();
            }

            if (!IsPostBack)
            {
                CargarGridMedicos();
            }
        }

        private void CargarGridMedicos()
        {
            DataTable dt = negocio.ObtenerMedicos(); // trae todos los médicos activos
            gvMedico.DataSource = dt;
            gvMedico.DataBind();
        }

        protected void gvMedico_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DarDeBaja")
            {
                string legajo = e.CommandArgument.ToString();
                try
                {
                    negocio.DarDeBajaMedico(legajo);
                    lblResultado.ForeColor = System.Drawing.Color.Green;
                    lblResultado.Text = "Médico dado de baja correctamente.";
                    CargarGridMedicos();
                }
                catch (Exception ex)
                {
                    lblResultado.ForeColor = System.Drawing.Color.Red;
                    lblResultado.Text = "Error al dar de baja: " + ex.Message;
                }
            }
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            NegocioMedicos negocioMedicos = new NegocioMedicos();

            DataTable dtFiltrado = negocioMedicos.filtrarMedicosPorLegajo(txtLegajo.Text.Trim());

            if (dtFiltrado.Rows.Count > 0)
            {
                gvMedico.DataSource = dtFiltrado;
                gvMedico.DataBind();
                lblMensaje.Text = ""; // Limpia mensaje anterior
            }
            else
            {
                gvMedico.DataSource = null;
                gvMedico.DataBind();
                lblMensaje.Text = "No se encontró médico activo con ese legajo.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
            }

            txtLegajo.Text = string.Empty;
        }


        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            CargarGridMedicos();
            lblMensaje.Text = string.Empty;
        }
    }
}