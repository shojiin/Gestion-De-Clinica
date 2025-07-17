using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Entidades;
using Negocio;

namespace TP_INTEGRADOR_15
{
    public partial class BajaPaciente : System.Web.UI.Page
    {
        NegocioPacientes negocioPacientes = new NegocioPacientes();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                lbl_Admin.Text = Session["Usuario"].ToString();
            }

            CargarPacientes();

        }

        // Muestra el GridView con los pacientes

        protected void CargarPacientes()
        {

            DataTable pacientes = negocioPacientes.ObtenerPacienteConAltaLogica();

            if (pacientes != null && pacientes.Rows.Count > 0)
            {
                gv_EliminarPaciente.DataSource = pacientes;
                gv_EliminarPaciente.DataBind();
            }
            else
            {
                gv_EliminarPaciente.DataSource = null;
                gv_EliminarPaciente.DataBind();
            }
        }

        //elimina el paciente
        protected void gvLibros_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string dni = ((Label)gv_EliminarPaciente.Rows[e.RowIndex].FindControl("lbl_it_DNIpaciente")).Text;

            negocioPacientes.EliminarPaciente(dni);

            lbl_Mensaje.Text = "Paciente eliminado correctamente.";
            lbl_Mensaje.ForeColor = System.Drawing.Color.Green;
            lbl_Mensaje.Visible = true;
            txt_DniPaciente.Text = " ";

            // Limpiar el GridView
            gv_EliminarPaciente.DataSource = null;
            gv_EliminarPaciente.DataBind();

            CargarPacientes();
        }


        //botón aceptar
        protected void btn_aceptar_Click(object sender, EventArgs e)
        {
            string dni = txt_DniPaciente.Text.Trim();
            DataTable paciente = negocioPacientes.ObtenerPaciente(dni);

            if (paciente != null && paciente.Rows.Count > 0)
            {
                lbl_Mensaje.Text=" ";
                gv_EliminarPaciente.DataSource = paciente;
                gv_EliminarPaciente.DataBind();
            }
            else
            {
                gv_EliminarPaciente.DataSource = null;
                gv_EliminarPaciente.DataBind();

                lbl_Mensaje.Text = "No se encontró ningún paciente con ese DNI.";
                lbl_Mensaje.ForeColor = System.Drawing.Color.OrangeRed;
                lbl_Mensaje.Visible = true;
            }

            

        }

        protected void BTN_Reestablecer_Click(object sender, EventArgs e)
        {
            CargarPacientes();
        }
    }
}