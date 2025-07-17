using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Medicos
    {
        // ---------- PROPIEDADES ----------
        private string _Legajo_Medico;
        private string _DNI_Medico;
        private string _Nombre_Medico;
        private string _Apellido_Medico;
        private string _CodEspecialidad_Medico;
        private string _Correo_Medico;
        private string _Telefono_Medico;
        private string _Sexo_Medico;
        private string _Fecha_Nacimiento_Medico;
        private string _Nacionalidad_Medico;
        private string _Provincia_Medico;
        private string _Ciudad_Medico;
        private string _Direccion_Medico;
        private string _DiasAtencion_Medico;
        private string _HorarioInicio_Medico;
        private string _HorarioFin_Medico;
        private string _Contrasenia_Medico;
        private bool _Estado_Medico;

        // ---------- CONSTRUCTORES ----------

        // CONSTRUCTOR POR DEFECTO
        public Medicos()
        {
            _Legajo_Medico = string.Empty;
            _DNI_Medico = string.Empty;
            _Nombre_Medico = string.Empty;
            _Apellido_Medico = string.Empty;
            _CodEspecialidad_Medico = string.Empty;
            _Correo_Medico = string.Empty;
            _Telefono_Medico = string.Empty;
            _Sexo_Medico = string.Empty;
            _Fecha_Nacimiento_Medico = string.Empty;
            _Nacionalidad_Medico = string.Empty;
            _Provincia_Medico = string.Empty;
            _Ciudad_Medico = string.Empty;
            _Direccion_Medico = string.Empty;
            _DiasAtencion_Medico = string.Empty;
            _HorarioInicio_Medico = string.Empty;
            _HorarioFin_Medico = string.Empty;
            _Contrasenia_Medico = string.Empty;
        }

        // CONSTRUCTOR CON TODOS LOS PARÁMETROS

        public Medicos(string Legajo_Medico, string DNI_Medico, string Nombre_Medico, string Apellido_Medico, string CodEspecialidad_Medico, string Correo_Medico,
            string Telefono_Medico, string Sexo_Medico_, string Fecha_Nacimiento_Medico, string Nacionalidad_Medico, string Provincia_Medico, string Ciudad_Medico,
            string Direccion_Medico, string DiasAtencion_Medico, string HorarioInicio_Medico, string HorarioFin_Medico, string Contrasenia_Medico)
        {
            _Legajo_Medico = Legajo_Medico;
            _DNI_Medico = DNI_Medico;
            _Nombre_Medico = Nombre_Medico;
            _Apellido_Medico = Apellido_Medico;
            _CodEspecialidad_Medico = CodEspecialidad_Medico;
            _Correo_Medico = Correo_Medico;
            _Telefono_Medico = Telefono_Medico;
            _Sexo_Medico = Sexo_Medico_;
            _Fecha_Nacimiento_Medico = Fecha_Nacimiento_Medico;
            _Nacionalidad_Medico = Nacionalidad_Medico;
            _Provincia_Medico = Provincia_Medico;
            _Ciudad_Medico = Ciudad_Medico;
            _Direccion_Medico = Direccion_Medico;
            _DiasAtencion_Medico = DiasAtencion_Medico;
            _HorarioInicio_Medico = HorarioInicio_Medico;
            _HorarioFin_Medico = HorarioFin_Medico;
            _Contrasenia_Medico = Contrasenia_Medico;
        }

        // CONSTRUCTOR PARA EDITAR UN MÉDICO

        public Medicos(string Legajo_Medico, string Nombre_Medico, string Apellido_Medico, string CodEspecialidad_Medico, string Correo_Medico,
            string Telefono_Medico, string Sexo_Medico_, string Nacionalidad_Medico, string Provincia_Medico, string Ciudad_Medico,
            string Direccion_Medico, string DiasAtencion_Medico, string HorarioInicio_Medico, string HorarioFin_Medico, string Contrasenia_Medico)
        {
            _Legajo_Medico = Legajo_Medico;
            _Nombre_Medico = Nombre_Medico;
            _Apellido_Medico = Apellido_Medico;
            _CodEspecialidad_Medico = CodEspecialidad_Medico;
            _Correo_Medico = Correo_Medico;
            _Telefono_Medico = Telefono_Medico;
            _Sexo_Medico = Sexo_Medico_;
            _Nacionalidad_Medico = Nacionalidad_Medico;
            _Provincia_Medico = Provincia_Medico;
            _Ciudad_Medico = Ciudad_Medico;
            _Direccion_Medico = Direccion_Medico;
            _DiasAtencion_Medico = DiasAtencion_Medico;
            _HorarioInicio_Medico = HorarioInicio_Medico;
            _HorarioFin_Medico = HorarioFin_Medico;
            _Contrasenia_Medico = Contrasenia_Medico;
        }

        // ---------- GETTERS Y SETTERS ----------

        public string Legajo_Medico
        {
            get { return _Legajo_Medico; }
            set { _Legajo_Medico = value; }
        }
        public string DNI_Medico
        {
            get { return _DNI_Medico; }
            set { _DNI_Medico = value; }
        }

        public string Nombre_Medico
        {
            get { return _Nombre_Medico; }
            set { _Nombre_Medico = value; }
        }

        public string Apellido_Medico
        {
            get { return _Apellido_Medico; }
            set { _Apellido_Medico = value; }
        }

        public string CodEspecialidad_Medico
        {
            get { return _CodEspecialidad_Medico; }
            set { _CodEspecialidad_Medico = value; }
        }

        public string Correo_Medico
        {
            get { return _Correo_Medico; }
            set { _Correo_Medico = value; }
        }

        public string Telefono_Medico
        {
            get { return _Telefono_Medico; }
            set { _Telefono_Medico = value; }
        }

        public string Sexo_Medico
        {
            get { return _Sexo_Medico; }
            set { _Sexo_Medico = value; }
        }

        public string Fecha_Nacimiento_Medico
        {
            get { return _Fecha_Nacimiento_Medico; }
            set { _Fecha_Nacimiento_Medico = value; }
        }

        public string Nacionalidad_Medico
        {
            get { return _Nacionalidad_Medico; }
            set { _Nacionalidad_Medico = value; }
        }

        public string Provincia_Medico
        {
            get { return _Provincia_Medico; }
            set { _Provincia_Medico = value; }
        }

        public string Ciudad_Medico
        {
            get { return _Ciudad_Medico; }
            set { _Ciudad_Medico = value; }
        }

        public string Direccion_Medico
        {
            get { return _Direccion_Medico; }
            set { _Direccion_Medico = value; }
        }

        public string DiasAtencion_Medico
        {
            get { return _DiasAtencion_Medico; }
            set { _DiasAtencion_Medico = value; }
        }

        public string HorarioInicio_Medico
        {
            get { return _HorarioInicio_Medico; }
            set { _HorarioInicio_Medico = value; }
        }

        public string HorarioFin_Medico
        {
            get { return _HorarioFin_Medico; }
            set { _HorarioFin_Medico = value; }
        }

        public string Contrasenia_Medico
        {
            get { return _Contrasenia_Medico; }
            set { _Contrasenia_Medico = value; }
        }

        public bool Estado_Medico
        {
            get { return _Estado_Medico; }
            set { _Estado_Medico = value; }
        }

    }
}
