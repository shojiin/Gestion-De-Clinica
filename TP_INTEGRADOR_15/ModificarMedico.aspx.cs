using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using Negocio;
using Entidades;

namespace TP_INTEGRADOR_15
{
    public partial class WebForm2 : System.Web.UI.Page
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
            NegocioMedicos negocioMedicos = new NegocioMedicos();
            gvMedico.DataSource = negocioMedicos.ObtenerMedicos();
            gvMedico.DataBind();
        }
       
        //CANCELAR
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvMedico.EditIndex = e.NewEditIndex;

            // Volver a cargar los datos al editar
            cargarGridView();
        }

        //EDITAR
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvMedico.EditIndex = -1;

            // Volver a cargar los datos al cancelar la edición
            cargarGridView();
        }

        //ACTUALIZAR
        protected void gvMedico_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string legajo = ((Label)gvMedico.Rows[e.RowIndex].FindControl("lbl_Eit_Legajo")).Text;
            string nombre = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtNombre")).Text; 
            string apellido = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtApellido")).Text;
            string especialidad = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtEspecialidad")).Text;
            string correo = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtCorreo")).Text;
            string telefono = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtTelefono")).Text;
            string sexo = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtSexo")).Text;
            string nacionalidad = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtNacionalidad")).Text;
            string provincia = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtProvincia")).Text;
            string ciudad = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtCiudad")).Text;
            string direccion = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtDireccion")).Text;
            string diasAtencion = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtDiasAtencion")).Text;
            string horaInicio = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtHoraInicio")).Text;
            string horaFin = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txtHoraFin")).Text;

            // Crear una instancia de Medicos con los datos actualizados

            Medicos medico = new Medicos
            {
                Legajo_Medico = legajo,
                Nombre_Medico = nombre,
                Apellido_Medico = apellido,
                CodEspecialidad_Medico = especialidad,
                Correo_Medico = correo,
                Telefono_Medico = telefono,
                Sexo_Medico = sexo,
                Nacionalidad_Medico = nacionalidad,
                Provincia_Medico = provincia,
                Ciudad_Medico = ciudad,
                Direccion_Medico = direccion,
                DiasAtencion_Medico = diasAtencion,
                HorarioInicio_Medico = horaInicio,
                HorarioFin_Medico = horaFin
            };

            // Llamar al método de actualización en la capa de negocio
            NegocioMedicos negocioMedicos = new NegocioMedicos();
            negocioMedicos.ActualizarMedico(medico);

            gvMedico.EditIndex = -1;
            cargarGridView();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            NegocioMedicos negocioMedicos = new NegocioMedicos();

            if (negocioMedicos.existeLegajoMedico(txtFiltrado.Text.Trim()))
            {
                DataTable dtFiltrado = negocioMedicos.filtrarMedicosPorLegajo(txtFiltrado.Text.Trim());
                gvMedico.DataSource = dtFiltrado;
                gvMedico.DataBind();

                lblLegajoInexistente.Text = string.Empty; // Limpiar mensaje de error si el legajo si existe
            }
            else
            {
                lblLegajoInexistente.Text = "El legajo ingresado no existe.";
            }

            // Limpiar el textBox después de filtrar
            txtFiltrado.Text = string.Empty;           
        }

        protected void gvMedico_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnReiniciar_Click(object sender, EventArgs e)
        {
            cargarGridView();

            txtFiltrado.Text = string.Empty;
            lblLegajoInexistente.Text = string.Empty;
        }
    }
}