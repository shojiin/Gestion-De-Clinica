using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Administradores
    {

        // [+] ---------- PROPIEDADES ---------- [+]
        private string _Legajo_Admin;
        private string _Contrasenia_Admin;
        private string _Nombre_Admin;
        private string _Apellido_Admin;
        private string _Correo_Admin;
        private string _Telefono_Admin;

        // [+] ---------- CONSTRUCTORES ---------- [+]

            // <+> CONSTRUCTOR POR DEFECTO
        public Administradores()
        {
            _Legajo_Admin = string.Empty;
            _Contrasenia_Admin = string.Empty;
            _Nombre_Admin = string.Empty;
            _Apellido_Admin = string.Empty;
            _Correo_Admin = string.Empty;
            _Telefono_Admin = string.Empty;
        }

            // <+> CONSTRUCTOR CON PARÁMETROS
        Administradores(string Legajo_Admin, string Contraseña_Admin, string Nombre_Admin, string Apellido_Admin, string Correo_Admin, string Telefono_Admin)
        {
            _Legajo_Admin = Legajo_Admin;
            _Contrasenia_Admin = Contraseña_Admin;
            _Nombre_Admin = Nombre_Admin;
            _Apellido_Admin = Apellido_Admin;
            _Correo_Admin = Correo_Admin;
            _Telefono_Admin = Telefono_Admin;
        }

        // [+] ---------- GETTERS Y SETTERS ---------- [+]

        public string Legajo_Admin
        {
            get{ return _Legajo_Admin; }
            set{ _Legajo_Admin = value; }
        }

        public string Contraseña_Admin
        {
            get{ return _Contrasenia_Admin; }
            set{ _Contrasenia_Admin = value; }
        }
        public string Nombre_Admin
        {
            get{ return _Nombre_Admin; }
            set{ _Nombre_Admin = value; }
        }
        public string Apellido_Admin
        {
            get{ return _Apellido_Admin; }
            set{ _Apellido_Admin = value; }
        }
        public string Correo_Admin
        {
            get{ return _Correo_Admin; }
            set{ _Correo_Admin = value; }
        }
        public string Telefono_Admin
        {
            get{ return _Telefono_Admin; }
            set{ _Telefono_Admin = value; }
        }

        // [+] ---------- MÉTODOS ---------- [+]

    }
}
