using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Entidades;
using Negocio;

namespace TP_INTEGRADOR_15
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            // VERIFICA SI EL USUARIO YA ESTÁ LOGUEADO
            if (Session["LegajoUsuario"] != null )
            {

                string UserName = Session["LegajoUsuario"].ToString();

                if ( UserName.StartsWith("ADM") )
                {
                    DIV_Login.Visible = false;
                    DIV_InterfazAdmin.Visible = true;
                    LBL_Admin_UserName.Text = Session["Usuario"].ToString();
                }
                else
                {
                    DIV_Login.Visible = false;
                    DIV_InterfazMedico.Visible = true;
                    LBL_Medico_UserName.Text = Session["Usuario"].ToString();
                }

            }

        }

        private void LimpiarCampos()
        {
            TB_Legajo.Text = string.Empty;
            TB_Password.Text = string.Empty;
        }

        // VALIDACIÓN DE DATOS INGRESADOS ( LOGUEO ADMIN & DOCTOR )
        protected void BTN_Enviar_Click(object sender, EventArgs e)
        {

            LBL_Error.Text = string.Empty;

            NegocioLogin NegLogin = new NegocioLogin();
            int Respuesta = NegLogin.ValidarLogin(TB_Legajo.Text, TB_Password.Text);

            if (Respuesta == 1) {
                DIV_Login.Visible = false;
                DIV_InterfazAdmin.Visible = true;
                
                // OBTENER NOMBRE Y APELLIDO DEL USUARIO ADMINISTRADOR
                Session["Usuario"] = NegLogin.ObtenerUsuario(TB_Legajo.Text);
                Session["LegajoUsuario"] = TB_Legajo.Text;
                LBL_Admin_UserName.Text = Session["Usuario"].ToString();
            }
            else if (Respuesta == 2){
                DIV_Login.Visible = false;
                DIV_InterfazMedico.Visible = true;

                // OBTENER NOMBRE Y APELLIDO DEL USUARIO MEDICO 
                Session["Usuario"] = NegLogin.ObtenerUsuario(TB_Legajo.Text);
                Session["LegajoUsuario"] = TB_Legajo.Text;
                LBL_Medico_UserName.Text = Session["Usuario"].ToString();
            }
            else
            {
                LBL_Error.Text = "Usuario o contraseña incorrectos.";
            }

            LimpiarCampos();

        }
    }
}