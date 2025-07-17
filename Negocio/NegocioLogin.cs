using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Datos;
using Entidades;

namespace Negocio
{
    public class NegocioLogin
    {

        // [+] ---------- CONSTRUCTORES ---------- [+]

            // <+> CONSTRUCTOR POR DEFECTO
        public NegocioLogin(){}

        // [+] ---------- MÉTODOS ---------- [+]

            // <+> VALIDACIÓN DE USUARIOS
        public int ValidarLogin(string Legajo, string Password)
        {

            int Respuesta = 0;

            if ( Legajo.Length == 8 && Legajo.StartsWith("ADM") )
            {
                GestionAdministradores _GestionAdmin = new GestionAdministradores();
                Respuesta = _GestionAdmin.ValidarLogin(Legajo, Password);
            }
            else if ( Legajo.Length == 8 && Legajo.StartsWith("MED") )
            {
                GestionMedicos _GestionMedicos = new GestionMedicos();
                Respuesta = _GestionMedicos.ValidarLogin(Legajo, Password);
            }
            else
            {
                Respuesta = 0; // USUARIO NO VÁLIDO
            }

            return Respuesta;

        }

        // <+> OBTENER USUARIO ( SE ALMACENA EN UNA VARIABLE SESSIÓN PARA USARLA EN CUALQUIER ASPX )
        public string ObtenerUsuario(string TB_Legajo)
        {

            string NombreCompleto = string.Empty;

            if (TB_Legajo.StartsWith("ADM"))
            {
                GestionAdministradores _GestionAdmin = new GestionAdministradores();
                NombreCompleto = _GestionAdmin.ObtenerUsuario(TB_Legajo);
            }
            else if (TB_Legajo.StartsWith("MED"))
            {
                GestionMedicos _GestionMedicos = new GestionMedicos();
                NombreCompleto = _GestionMedicos.ObtenerUsuario(TB_Legajo);
            }

            return NombreCompleto;

        }

    }
}
