using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TP_INTEGRADOR_15
{
    public partial class Informe2 : System.Web.UI.Page
    {
        NegocioConsultas negocioConsultas = new NegocioConsultas();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt =  negocioConsultas.cargarTabla();
                gvConsultas.DataSource = dt;
                gvConsultas.DataBind();
                if (Session["Usuario"] != null)
                {
                lbl_Usuario.Text = Session["Usuario"].ToString();
                }
            }
        }

        protected void btn_Presente_Click(object sender, EventArgs e)
        {
            DateTime fechaSelecionada = Calendar1.SelectedDate;
            DateTime dia = fechaSelecionada;
            DataTable dt = new DataTable();
            dt = negocioConsultas.cargarTablaxDia(dia);
            if (dt.Rows.Count == 0)
            {
                lbl_Mensaje.Text = "No se encontraron registros para la fecha seleccionada.";
                gvConsultas.DataSource = null;
                gvConsultas.DataBind();
                lbl1.Text = string.Empty;
                lbl2.Text = string.Empty;
            }
            else
            {
                lbl_Mensaje.Text = ""; // Limpiar mensaje si hay resultados
                gvConsultas.DataSource = dt;
                gvConsultas.DataBind();
                int total = dt.Rows.Count;
                int presentes = dt.AsEnumerable().Count(row => Convert.ToBoolean(row["PresenciaPaciente"]));
                int ausentes = total - presentes;

                int porcentajePresente = (int)Math.Round((double)(presentes * 100) / total);
                int porcentajeAusente = 100 - porcentajePresente;

                lbl1.Text =  porcentajePresente + "%";
                lbl2.Text =  porcentajeAusente + "%";
            }

        }
    }
}