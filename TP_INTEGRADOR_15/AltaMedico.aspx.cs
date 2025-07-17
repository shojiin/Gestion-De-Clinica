using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_INTEGRADOR_15
{
    public partial class AltaMedico : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if ( Session["Usuario"] != null )
                {
                    LBL_Usuario.Text = Session["Usuario"].ToString();
                }

                CargarProvincias();
                cargarEspecialidad();
            }

        }

        protected void LimpiarCampos()
        {
            TB_Nombre.Text = string.Empty;
            TB_Apellido.Text = string.Empty;
            TB_DNI.Text = string.Empty;
            TB_Direccio.Text = string.Empty;
            TB_Telefono.Text = string.Empty;
            TB_Dias.Text = string.Empty;
            TB_HS_Inicio.Text = string.Empty;
            TB_HS_Fin.Text = string.Empty;
            TB_Password.Text = string.Empty;
            RBL_Sexo.ClearSelection();
            DDL_Provincias.SelectedIndex = 0;
            DDL_Ciudades.Items.Clear();
            DDL_Especialidad.SelectedIndex = 0;
            Input_FDN.Value = string.Empty;
            TB_Nacionalidad.Text = string.Empty;
            TB_Correo.Text = string.Empty;
        }

        protected void CargarProvincias()
        {

            NegocioMedicos negocioMedicos = new NegocioMedicos();
            DataTable Provincias = negocioMedicos.ListarProvincias();

            DDL_Provincias.DataSource = Provincias;
            DDL_Provincias.DataTextField = "Desc_Provincia";
            DDL_Provincias.DataValueField = "CodProvincia";
            DDL_Provincias.DataBind();
            DDL_Provincias.Items.Insert(0, new ListItem("-- Seleccione una provincia --", "0"));

        }

        protected void CargarLocalidades(string CodProvincia)
        {

            NegocioMedicos negocioMedicos = new NegocioMedicos();
            DataTable Localidades = negocioMedicos.ListarLocalidades(CodProvincia);

            DDL_Ciudades.DataSource = Localidades;
            DDL_Ciudades.DataTextField = "Desc_Ciudad";
            DDL_Ciudades.DataValueField = "CodPostal_Ciudad";
            DDL_Ciudades.DataBind();
            DDL_Ciudades.Items.Insert(0, new ListItem("-- Seleccione una localidad --", "0"));

        }

        protected void cargarEspecialidad()
        {

            NegocioMedicos negocioMedicos = new NegocioMedicos();
            DataTable Especialidades = negocioMedicos.ListarEspecialidad();

            DDL_Especialidad.DataSource = Especialidades;
            DDL_Especialidad.DataTextField = "Especialidad";
            DDL_Especialidad.DataValueField = "Cod_Especialidad";
            DDL_Especialidad.DataBind();
            DDL_Especialidad.Items.Insert(0, new ListItem("-- Seleccione una especialidad --", "0"));

        }

        protected void DDL_Provincias_SelectedIndexChanged(object sender, EventArgs e)
        {
            string codProvincia = DDL_Provincias.SelectedValue;

            if (codProvincia != "0")
            {
                CargarLocalidades(codProvincia);
            }
        }

        protected void BTN_Enviar_Click(object sender, EventArgs e)
        {
            Medicos _Medicos = new Medicos();
            _Medicos.DNI_Medico = TB_DNI.Text;
            _Medicos.Nombre_Medico = TB_Nombre.Text;
            _Medicos.Apellido_Medico = TB_Apellido.Text;
            _Medicos.Direccion_Medico = TB_Direccio.Text;
            _Medicos.Telefono_Medico = TB_Telefono.Text;
            _Medicos.HorarioInicio_Medico = TB_HS_Inicio.Text;
            _Medicos.HorarioFin_Medico = TB_HS_Fin.Text;
            _Medicos.Contrasenia_Medico = TB_Password.Text;
            _Medicos.Sexo_Medico = RBL_Sexo.SelectedValue.ToString();
            _Medicos.Provincia_Medico = DDL_Provincias.SelectedItem.ToString();
            _Medicos.Ciudad_Medico = DDL_Ciudades.SelectedItem.ToString();
            _Medicos.CodEspecialidad_Medico = DDL_Especialidad.SelectedValue.ToString();
            _Medicos.Fecha_Nacimiento_Medico = Input_FDN.Value;

            _Medicos.Nacionalidad_Medico = TB_Nacionalidad.Text;
            _Medicos.Correo_Medico = TB_Correo.Text;
            _Medicos.DiasAtencion_Medico = TB_Dias.Text;

            NegocioMedicos _Medico = new NegocioMedicos();

            try
            {
                _Medico.RegistrarMedico(_Medicos);
                lbl_Mensaje.Text = "El médico se registró exitosamente.";
                lbl_Mensaje.ForeColor = System.Drawing.Color.Green;
                lbl_Mensaje.Visible = true;
                LimpiarCampos();
            }
            catch (Exception ex)
            {
                lbl_Mensaje.Text = "Error al registrar el médico. Verifique los datos.";
                lbl_Mensaje.ForeColor = System.Drawing.Color.Red;
                lbl_Mensaje.Visible = true;
            }
        }

    }
}
                
    


               