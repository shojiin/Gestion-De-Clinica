using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;
using Datos;
using Entidades;

namespace Negocio
{
    public class NegocioPacientes
    {
        GestionPacientes gestionPacientes = new GestionPacientes();
    
        //métodos
        public void RegistrarPaciente(string nombre, string apellido, string DNI, string Sexo, string Nacionalidad, string FechaNac, string Direc, string Prov, string Localidad, string Correo, string Telefono)
        {
            gestionPacientes.insertarPaciente(nombre, apellido, DNI, Sexo, Nacionalidad, FechaNac, Direc, Prov, Localidad, Correo, Telefono);
        }

        public DataTable listarProvincias()
        {
            return gestionPacientes.Provincias();
        }

        public DataTable listarLocalidades (string CodProvincia)
        {
            return gestionPacientes.Localidades(CodProvincia);
        }

        // [+] ---------- LISTAR PACIENTES ---------- [+]

        public DataTable ListarPacientes()
        {
            return gestionPacientes.ListarPacientes();
        }

        //obtiene el estado del paciente
        public DataTable ObtenerPaciente(string DNI_Paciente)
        {
            return gestionPacientes.ObtenerPaciente(DNI_Paciente);
        }

        //pasa el estado del paciente a 0
        public void EliminarPaciente(string DNI_Paciente)
        {
            gestionPacientes.BajaLogicaPaciente(DNI_Paciente);
        }

        //si el esrtado del paciente estaba en 0, pasa a 1
        public void ReactivarPaciente(string DNI_Paciente)
        {
            gestionPacientes.ReactivarPaciente(DNI_Paciente);
        }

        // [+] ---------- ACTUALIZAR PACIENTE ---------- [+]

        public void ActualizarPaciente(Pacientes Paciente)
        {
            // TRAIGO LOS DATOS DEL PACIENTE A ACTUALIZAR
            Paciente = gestionPacientes.TraerDatosPaciente(Paciente);
            // ACTUALIZO LOS DATOS DEL PACIENTE
            gestionPacientes.ActualizarPaciente(Paciente);
        }

        // [+] ---------- CARGAR GRIDVIEW POR NOMBRE ---------- [+]

        public DataTable CargarGridViewPorNombre(string nombre)
        {
            return gestionPacientes.CargarGridViewPorNombre(nombre);
        }

        // [+] ---------- OBTENER PACIENTES CON ALTA LÓGICA ---------- [+]

        public DataTable ObtenerPacienteConAltaLogica()
        {
            return gestionPacientes.ObtenerPacienteConAltaLogica();
        }

    }
}
