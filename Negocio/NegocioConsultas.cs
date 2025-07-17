using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidades;

namespace Negocio
{
    public class NegocioConsultas
    {
        GestionConsultas GestionConsultas = new GestionConsultas();

        public bool RegistrarConsulta(Consulta consulta)
        {
            int fialasAfectadas = GestionConsultas.GuardarConsulta(consulta);
            if (fialasAfectadas > 0)
            {
                return true;
            }
            else { return false; }
        }
        public DataTable cargarTabla()
        {
            DataTable dataTable = new DataTable();
            dataTable  = GestionConsultas.CargarConsutasConPacientes();
            return dataTable;
        }
        public DataTable cargarTablaxDia(DateTime dia)
        {
            DataTable dataTable = new DataTable();
            dataTable = GestionConsultas.CargarTablaxDia(dia);
            return dataTable;
        }
    }
}
