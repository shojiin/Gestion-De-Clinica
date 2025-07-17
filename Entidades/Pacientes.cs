using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
    {
        public class Pacientes
        {

            // [+] ---------- PROPIEDADES ---------- [+]
            private string _Nombre_Paciente;
            private string _Apellido_Paciente;
            private string _DNI_Paciente;
            private string _Sexo_Paciente;
            private string _Nacionalidad_Paciente;
            private string _FechaNacimiento_Paciente;
            private string _Direccion_Paciente;
            private string _Provincia_Paciente;
            private string _Localidad_Paciente;
            private string _Correo_Paciente;
            private string _Telefono_Paciente;

            // [+] ---------- CONSTRUCTORES ---------- [+]

            // <+> CONSTRUCTOR POR DEFECTO
            public Pacientes()
            {
                _Nombre_Paciente = string.Empty;
                _Apellido_Paciente = string.Empty;
                _DNI_Paciente = string.Empty;
                _Sexo_Paciente = string.Empty;
                _Nacionalidad_Paciente = string.Empty;
                _FechaNacimiento_Paciente = string.Empty;
                _Direccion_Paciente = string.Empty;
                _Provincia_Paciente = string.Empty;
                _Localidad_Paciente = string.Empty;
                _Correo_Paciente = string.Empty;
                _Telefono_Paciente = string.Empty;
            }

            // <+> CONSTRUCTOR CON PARÁMETROS
            Pacientes(string Nombre_Paciente, string Apellido_Paciente, string DNI_Paciente, string Sexo_Paciente, string Nacionalidad_Paciente, string FechaNacimiento_Paciente, string Direccion_Paciente, string Provincia_Paciente, string Localidad_Paciente, string Correo_Paciente, string Telefono_Paciente)
            {
                _Nombre_Paciente = Nombre_Paciente;
                _Apellido_Paciente = Apellido_Paciente;
                _DNI_Paciente = DNI_Paciente;
                _Sexo_Paciente = Sexo_Paciente;
                _Nacionalidad_Paciente = Nacionalidad_Paciente;
                _FechaNacimiento_Paciente = FechaNacimiento_Paciente;
                _Direccion_Paciente = Direccion_Paciente;
                _Provincia_Paciente = Provincia_Paciente;
                _Localidad_Paciente = Localidad_Paciente;
                _Correo_Paciente = Correo_Paciente;
                _Telefono_Paciente = Telefono_Paciente;
            }

            // [+] ---------- GETTERS Y SETTERS ---------- [+]

            public string Nombre_Paciente
            {
                get { return _Nombre_Paciente; }
                set { _Nombre_Paciente = value; }
            }

            public string Apellido_Paciente
            {
                get { return _Apellido_Paciente; }
                set { _Apellido_Paciente = value; }
            }
            public string DNI_Paciente
            {
                get { return _DNI_Paciente; }
                set { _DNI_Paciente = value; }
            }
            public string Sexo_Paciente
            {
                get { return _Sexo_Paciente; }
                set { _Sexo_Paciente = value; }
            }
            public string Nacionalidad_Paciente
            {
                get { return _Nacionalidad_Paciente; }
                set { _Nacionalidad_Paciente = value; }
            }
            public string FechaNacimiento_Paciente
            {
                get { return _FechaNacimiento_Paciente; }
                set { _FechaNacimiento_Paciente = value; }
            }
            public string Direccion_Paciente
            {
                get { return _Direccion_Paciente; }
                set { _Direccion_Paciente = value; }
            }
            public string Provincia_Paciente
            {
                get { return _Provincia_Paciente; }
                set { _Provincia_Paciente = value; }
            }
            public string Localidad_Paciente
            {
                get { return _Localidad_Paciente; }
                set { _Localidad_Paciente = value; }
            }
            public string Correo_Paciente
            {
                get { return _Correo_Paciente; }
                set { _Correo_Paciente = value; }
            }
            public string Telefono_Paciente
            {
                get { return _Telefono_Paciente; }
                set { _Telefono_Paciente = value; }
            }
        }
    }


