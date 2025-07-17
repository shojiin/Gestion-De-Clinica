using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Authentication.ExtendedProtection;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;   
using System.Data;
using Datos;
using Entidades;

namespace Negocio
{
    public class NegocioMedicos
    {
        GestionMedicos GestionMedicos = new GestionMedicos();

        public DataTable ObtenerMedicos()
        {
            DataTable dataTable = new DataTable();
            GestionMedicos.ObtenerMedicos(dataTable);
            return dataTable;   
        }

        public void ActualizarMedico(Medicos medico)
        {
            GestionMedicos.actualizarMedicos(medico);
        }

        public DataTable filtrarMedicosPorLegajo(string filtro)
        {
            DataTable dataTable = new DataTable();
            dataTable = GestionMedicos.FiltrarMedicosPorLegajo(filtro);
            return dataTable;
        }

        public bool existeLegajoMedico(string legajo)
        { 
            bool existe = GestionMedicos.ExisteLegajoMedico(legajo);
            return existe;
        }

        public void DarDeBajaMedico(string legajo)
        {
            GestionMedicos.DarDeBajaMedico(legajo);
        }

        // [+] ---------- LISTAR PROVINCIAS ---------- [+]

        public DataTable ListarProvincias()
        {
            return GestionMedicos.Provincias();
        }

        // [+] ---------- LISTAR LOCALIDADES ---------- [+]

        public DataTable ListarLocalidades(string CodProvincia)
        {
            return GestionMedicos.Localidades(CodProvincia);
        }

        // [+] ---------- LISTAR ESPECIALIDADES ---------- [+]

        public DataTable ListarEspecialidad()
        {
            return GestionMedicos.Especialidades();
        }

        // [+] ---------- REGISTRAR MÉDICO ---------- [+]

        public void RegistrarMedico(Medicos _Medico)
        {
            GestionMedicos _GestionMedicos = new GestionMedicos();
            _GestionMedicos.RegistrarMedico(_Medico);
        }

    }

}
