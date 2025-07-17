using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_INTEGRADOR_15
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                // MUESTRA EL NOMBRE DEL USUARIO LOGUEADO
                LBL_UserName.Text = Session["Usuario"].ToString();

                // CARGA EL GRIDVIEW CON LOS PACIENTES
                CargarGridView();
            }

        }

        // [+] ---------- CARGAR GRID VIEW ---------- [+]
        protected void CargarGridView()
        {

            if ( TB_UserName.Text == string.Empty )
            {
                NegocioPacientes _NegPacientes = new NegocioPacientes();
                GV_Pacientes.DataSource = _NegPacientes.ListarPacientes();
                GV_Pacientes.DataBind();
            }
            else
            {
                string Nombre = TB_UserName.Text.Trim();
                NegocioPacientes _NegPacientes = new NegocioPacientes();
                GV_Pacientes.DataSource = _NegPacientes.CargarGridViewPorNombre(Nombre);
                GV_Pacientes.DataBind();
            }
                 
        }

        // [+] ---------- PAGINACIÓN ---------- [+]
        protected void GV_Pacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_Pacientes.PageIndex = e.NewPageIndex;
            CargarGridView();
        }

        // [+] ---------- BOTÓN EDITAR ---------- [+]
        protected void GV_Pacientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GV_Pacientes.EditIndex = e.NewEditIndex;
            CargarGridView();
        }

        // [+] ---------- BOTÓN CANCELAR ---------- [+]
        protected void GV_Pacientes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GV_Pacientes.EditIndex = -1;
            CargarGridView();
        }

        // [+] ---------- BOTÓN ACTUALIZAR ---------- [+]
        protected void GV_Pacientes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            Pacientes _Paciente = new Pacientes(); // CREO UN OBJETO PACIENTE

            // ASIGNO LOS VALORES DE LOS CONTROLES DEL GRIDVIEW AL OBJETO PACIENTE
            _Paciente.DNI_Paciente = ((Label)GV_Pacientes.Rows[e.RowIndex].FindControl("LBL_EIT_DNI")).Text;
            _Paciente.Nombre_Paciente = ((TextBox)GV_Pacientes.Rows[e.RowIndex].FindControl("TB_EIT_Nombre")).Text;
            _Paciente.Apellido_Paciente = ((TextBox)GV_Pacientes.Rows[e.RowIndex].FindControl("TB_EIT_Apellido")).Text;
            _Paciente.Sexo_Paciente = ((Label)GV_Pacientes.Rows[e.RowIndex].FindControl("LBL_EIT_Sexo")).Text;
            _Paciente.Nacionalidad_Paciente = ((TextBox)GV_Pacientes.Rows[e.RowIndex].FindControl("TB_EIT_Nacionalidad")).Text;
            _Paciente.FechaNacimiento_Paciente = ((Label)GV_Pacientes.Rows[e.RowIndex].FindControl("LBL_EIT_FechaNacimiento")).Text;
            _Paciente.Direccion_Paciente = ((TextBox)GV_Pacientes.Rows[e.RowIndex].FindControl("TB_EIT_Direccion")).Text;
            _Paciente.Correo_Paciente = ((TextBox)GV_Pacientes.Rows[e.RowIndex].FindControl("TB_EIT_Correo")).Text;
            _Paciente.Telefono_Paciente = ((TextBox)GV_Pacientes.Rows[e.RowIndex].FindControl("TB_EIT_Telefono")).Text;

            _Paciente.Provincia_Paciente = ((DropDownList)GV_Pacientes.Rows[e.RowIndex].FindControl("DDL_EIT_Provincia")).SelectedItem.Text;
            _Paciente.Localidad_Paciente = ((DropDownList)GV_Pacientes.Rows[e.RowIndex].FindControl("DDL_EIT_Ciudad")).SelectedItem.Text;

            NegocioPacientes _NegPacientes = new NegocioPacientes();
            _NegPacientes.ActualizarPaciente(_Paciente);
            
            GV_Pacientes.EditIndex = -1;
            CargarGridView();   

        }

        // AL EDITAR CARGAR LOS DROPDOWNLISTS DE PROVINCIAS Y LOCALIDADES
        protected void GV_Pacientes_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            // VERIFICA SI LA FILA ES UNA FILA DE DATOS Y SE ESTÁ EN MODO EDICIÓN
            /*
             e.Row.RowType: Verifica si la fila es de tipo DataRow (fila de datos).
             e.Row.RowState.HasFlag(DataControlRowState.Edit): Verifica si la fila está en modo edición.
             */
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowState.HasFlag(DataControlRowState.Edit))
            {

                // CARGAR PROVINCIAS
                NegocioPacientes _NegPacientes = new NegocioPacientes();

                DropDownList ddlProvincias = (DropDownList)e.Row.FindControl("DDL_EIT_Provincia");
                ddlProvincias.DataSource = _NegPacientes.listarProvincias();
                ddlProvincias.DataTextField = "Desc_Provincia";
                ddlProvincias.DataValueField = "CodProvincia";
                ddlProvincias.DataBind();

                // CARGAR LOCALIDADES SEGÚN LA PROVINCIA SELECCIONADA
                DropDownList ddlLocalidades = (DropDownList)e.Row.FindControl("DDL_EIT_Ciudad");
                string codProvincia = ((DropDownList)e.Row.FindControl("DDL_EIT_Provincia")).Text;
                ddlLocalidades.DataSource = _NegPacientes.listarLocalidades(codProvincia);
                ddlLocalidades.DataTextField = "Desc_Ciudad";
                ddlLocalidades.DataValueField = "CodPostal_Ciudad";
                
                ddlLocalidades.DataBind();

            }

        }

        // [+] ---------- BOTÓN ACTUALIZAR ---------- [+]
            // - sender: CONTROL QUE DISPARA EL EVENTO
        protected void DDL_EIT_Provincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            DropDownList ddlProvincia = (DropDownList)sender;

            // BUSCO LA FILA DEL GRIDVIEW QUE CONTIENE EL DROPDOWNLIST
            GridViewRow fila = (GridViewRow)ddlProvincia.NamingContainer;

            DropDownList ddlCiudad = (DropDownList)fila.FindControl("DDL_EIT_Ciudad");

            // Cargo las ciudades correspondientes
            NegocioPacientes _Neg = new NegocioPacientes();
            ddlCiudad.DataSource = _Neg.listarLocalidades(ddlProvincia.SelectedValue);
            ddlCiudad.DataTextField = "Desc_Ciudad";
            ddlCiudad.DataValueField = "CodPostal_Ciudad";
            ddlCiudad.DataBind();

        }

        protected void BTN_Send_Click(object sender, EventArgs e)
        {
            string Nombre = TB_UserName.Text.Trim();

            NegocioPacientes _NegPacientes = new NegocioPacientes();
            GV_Pacientes.DataSource = _NegPacientes.CargarGridViewPorNombre(Nombre);
            GV_Pacientes.DataBind();
        }

        protected void BTN_MostrarOriginal_Click(object sender, EventArgs e)
        {
            TB_UserName.Text = string.Empty;
            CargarGridView();
        }
    }
}