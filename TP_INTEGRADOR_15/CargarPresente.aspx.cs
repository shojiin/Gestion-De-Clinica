using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using static System.Net.Mime.MediaTypeNames;

namespace TP_INTEGRADOR_15
{
    public partial class CargarPresente : System.Web.UI.Page
    {
        NegocioTurnos negocio = new NegocioTurnos();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (Session["Usuario"] != null)
                {
                    LBL_Usuario.Text = Session["Usuario"].ToString();
                }

                DataTable dt = negocio.cargarPresente(); // este es tu método que ya hiciste
                gvTurnos.DataSource = dt;
               
                gvTurnos.DataBind();
            }
                
        }
           

            
   
            protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Puedes dejarlo vacío si no necesitas manejar la selección
        }


        protected void gvTurnos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "VerObservacion")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gvTurnos.Rows[index];

                // Obtener el estado desde la celda correspondiente (ajustá el índice de columna si cambia)
                string estado = row.Cells[7].Text.Trim(); // Suponiendo que la columna Estado es la 8va (índice 7)

                TextBox txtObs = (TextBox)row.FindControl("txtObservacion");

                if (estado == "Presente")
                {
                    txtObs.Visible = true;
                }
                else
                {
                    txtObs.Visible = false;
                }
            }
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = gvTurnos.Rows[index];
           

            if (e.CommandName == "Presente")
            {
                Consulta consulta = new Consulta();
               
                consulta._DNIPaciente_cons = ((Label)row.FindControl("lblDNI")).Text;
                consulta._LegajoMedico_cons = ((Label)row.FindControl("label1")).Text;
                consulta._PresenciaPaciente = true;
                consulta._Observacion_Cons = txtObservacion.Text;
                string codConsulta = ((Label)row.FindControl("lbl_codTurno")).Text;
                negocio.CambiarEstadoTurno(codConsulta);
                NegocioConsultas negocioCons = new NegocioConsultas();
                if (negocioCons.RegistrarConsulta(consulta))
                {
                    lbl_Mensaje.Text = "La consultas se realizo con exito"; 
                    txtObservacion.Text = string.Empty; // Limpiar el TextBox después de registrar la consulta
                    DataTable dt = negocio.cargarPresente(); // este es tu método que ya hiciste
                    gvTurnos.DataSource = dt;

                    gvTurnos.DataBind();
                }
                else
                {
                    lbl_Mensaje.Text = "no se pudo realizar la consulta";
                }
            }
        }

        public void ActualizarTurno()
        {
            Turnos turnos = new Turnos();
            turnos._Estado_Turno = false;
        }


        protected void Button2_Command(object sender, CommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = gvTurnos.Rows[index];

            if (e.CommandName == "Ausente")
            {
                Consulta consulta = new Consulta();

                consulta._DNIPaciente_cons = ((Label)row.FindControl("lblDNI")).Text;
                consulta._LegajoMedico_cons = ((Label)row.FindControl("label1")).Text;
                consulta._PresenciaPaciente = false;
                consulta._Observacion_Cons = " ";
                string codConsulta = ((Label)row.FindControl("lbl_codTurno")).Text;
                negocio.CambiarEstadoTurno(codConsulta);
                NegocioConsultas negocioCons = new NegocioConsultas();
                if (negocioCons.RegistrarConsulta(consulta))
                {
                    lbl_Mensaje.Text = "La consultas se realizo con exito";
                    DataTable dt = negocio.cargarPresente(); // este es tu método que ya hiciste
                    gvTurnos.DataSource = dt;

                    gvTurnos.DataBind();

                }
                else
                {
                    lbl_Mensaje.Text = "no se pudo realizar la consulta";
                    txtObservacion.Text = string.Empty; // Limpiar el TextBox después de registrar la consulta
                }

            }

        }

    }
}



     

