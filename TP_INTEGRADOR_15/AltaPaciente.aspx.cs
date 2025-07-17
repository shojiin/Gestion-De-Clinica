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
    public partial class AltaPaciente : System.Web.UI.Page
    {
        NegocioPacientes negocioPacientes = new NegocioPacientes();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Usuario"] != null)
                {
                    lbl_Admin.Text = Session["Usuario"].ToString();
                }

                cargarProvincias();
                cargarProvincias();
                cargarLocalidades("0");
            }

        }

        //Limpiamos los campos luego de cargar un Paciente
        protected void LimpiarCampos()
        {
            txt_nombrePaciente.Text = "";
            txt_apellidoPaciente.Text = "";
            txt_DniPaciente.Text = "";
            txt_nacPaciente.Text = "";
            txt_direccionPaciente.Text = "";
            txt_correoPaciente.Text = "";
            txt_telefonoPaciente.Text = "";
            txt_FechaNacPaciente.Value = "";
            rb_pacienteFem.Checked = true;
            rb_pacienteMasc.Checked = false;
            ddl_ProvPaciente.SelectedIndex = 0;
            ddl_LocPaciente.Items.Clear();
        }

        //Cargo dropDownList de Provincias
        protected void cargarProvincias()
        {
            DataTable Provincias = negocioPacientes.listarProvincias();
            ddl_ProvPaciente.DataSource = Provincias;
            ddl_ProvPaciente.DataTextField = "Desc_Provincia";
            ddl_ProvPaciente.DataValueField = "CodProvincia";
            ddl_ProvPaciente.DataBind();
            ddl_ProvPaciente.Items.Insert(0, new ListItem("-- Seleccionar --", "0"));
        }

        //Cargo dropDownList de Localidades
        protected void cargarLocalidades(string CodProvincia)
        {
             DataTable Localidades = negocioPacientes.listarLocalidades(CodProvincia);
             ddl_LocPaciente.DataSource = Localidades;
             ddl_LocPaciente.DataTextField = "Desc_Ciudad";
             ddl_LocPaciente.DataValueField = "CodPostal_Ciudad";
             ddl_LocPaciente.DataBind();
             ddl_LocPaciente.Items.Insert(0, new ListItem("-- Seleccionar --", "0"));
        }

        //Obtengo un string a partir de los radiobuttons
        protected string ObtenerGenero(object sender, object sender1)
        {
            string Sexo="";

            if (rb_pacienteFem.Checked)
            {
                Sexo = "Femenino";
            }
            else if (rb_pacienteMasc.Checked)
            {
                Sexo = "Masculino";
            }

            return Sexo;
        }

        //botón aceptar, guardo los datos del paciente
        protected void btn_Aceptar_Click(object sender, EventArgs e)
        {
            string DNI_Paciente = txt_DniPaciente.Text;

            string fechaTexto = txt_FechaNacPaciente.Value;

            DataTable paciente = negocioPacientes.ObtenerPaciente(DNI_Paciente);

            //si existe, no se carga
            if (paciente != null && paciente.Rows.Count > 0)
            {
                    lblMensaje.Text = "El paciente ya está dado de alta.";
                    lblMensaje.ForeColor = System.Drawing.Color.OrangeRed;
            }
            else
            {
                //si no existe o si su estado es 0, se carga
                    negocioPacientes.RegistrarPaciente(txt_nombrePaciente.Text, txt_apellidoPaciente.Text, txt_DniPaciente.Text,
                    ObtenerGenero(rb_pacienteFem, rb_pacienteMasc), txt_nacPaciente.Text, fechaTexto, txt_direccionPaciente.Text,
                    ddl_ProvPaciente.SelectedValue, ddl_LocPaciente.SelectedValue, txt_correoPaciente.Text, txt_telefonoPaciente.Text);
                    lblMensaje.Text = "El paciente fue dado de alta con éxito.";
                    lblMensaje.ForeColor = System.Drawing.Color.Green;
            }
            LimpiarCampos();
        }

        //Si se elige una provincia, se cargan las respectivas localidades
        protected void ddl_ProvPaciente_SelectedIndexChanged(object sender, EventArgs e)
        {
            string codProvincia = ddl_ProvPaciente.SelectedValue;

            if ( codProvincia != "0" )
            {
                cargarLocalidades(codProvincia);
            }
            else
            {
                cargarLocalidades("0");
            }

        }
    }
}