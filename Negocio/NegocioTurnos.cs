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
    public class NegocioTurnos
    {
        GestionTurnos gestionTurnos = new GestionTurnos();

        public DataTable ObtenerTurnos()
        {
            DataTable dataTable = new DataTable();
            gestionTurnos.ObtenerTurnos(dataTable);
            return dataTable;
        }

        public DataTable filtrarTurnosPorPaciente(string filtro)
        {
            DataTable dataTable = new DataTable();
            dataTable = gestionTurnos.FiltrarTurnosPorPaciente(filtro);
            return dataTable;
        }

        public bool existeDNIPaciente(string DNIPaciente)
        {
            bool existe = gestionTurnos.ExisteDNIPaciente(DNIPaciente);
            return existe;
        }

        // [+] ---------- CARGAR ESPECIALIDADES ---------- [+]
        public DataTable CargarEspecialidades()
        {
            return gestionTurnos.CargarEspecialidades();
        }

        // [+] ---------- CARGAR MÉDICOS POR ESPECIALIDAD ---------- [+]

        public DataTable CargarMedicosPorEspecialidad(string CodEspecialidad)
        {
            return gestionTurnos.CargarMedicosPorEspecialidad(CodEspecialidad);
        }

        // [+] ---------- CARGAR DÍAS DISPONIBLES POR MÉDICO ---------- [+]
        public DataTable CargarDiasDisponibles(string LegajoMedico)
        {
            return gestionTurnos.CargarDiasDisponibles(LegajoMedico);
        }

        // [+] ---------- CARGAR HORARIOS DISPONIBLES DEL MÉDICO ---------- [+]

        public string CargarHorariosDisponibles(string LegajoMedico)
        {
            return gestionTurnos.CargarHorariosDisponibles(LegajoMedico);
        }

        // [+] ---------- VERIFICAR EXISTENCIA DEL PACIENTE POR DNI ---------- [+]

        public bool VerificarExistenciaPaciente(string DNIPaciente)
        {
            return gestionTurnos.VerificarExistenciaPaciente(DNIPaciente);
        }

        // [+] ---------- OBTENER NOMBRE DEL DÍA ---------- [+]

        public string ObtenerNombreDia(string DiaTurno)
        {

            if (DateTime.TryParse(DiaTurno, out DateTime fecha))
            {
                // Obtener nombre del día en español
                string nombreDia = fecha.ToString("dddd", new System.Globalization.CultureInfo("es-AR"));

                // Capitalizar la primera letra (opcional)
                nombreDia = char.ToUpper(nombreDia[0]) + nombreDia.Substring(1);

                return nombreDia;
            }
            else
            {
                return "";
            }

        }

        // [+] ---------- VERIFICAR DÍA DEL TURNO ---------- [+]

        public bool VerificarDiaTurno(string LegajoMedico, string DiaTurno)
        {
            return gestionTurnos.VerificarDiaTurno(LegajoMedico, DiaTurno);
        }

        // [+] ---------- VERIFICAR HORARIO DEL TURNO ---------- [+]

        public bool VerificarHorarioTurno(string LegajoMedico, string HorarioTurno, string Fecha)
        {
            if (gestionTurnos.VerificarHorarioTurno(LegajoMedico, HorarioTurno))
            {

                return VerificarRepeticionTurnos(LegajoMedico, HorarioTurno, Fecha);

            }
            else
            {
                return false;
            }

        }

        // [+] ---------- VERIFICAR REPETICIÓN DE TURNOS ---------- [+]

        public bool VerificarRepeticionTurnos(string LegajoMedico, string HorarioTurno, string Fecha)
        {
            // Verifica si ya existe un turno con el mismo médico, horario y fecha
            return !gestionTurnos.VerificarRepeticionTurnos(LegajoMedico, HorarioTurno, Fecha);
        }

        // [+] ---------- ASIGNAR TURNO ---------- [+]

        public void CargarTurnos(Turnos turno)
        {

            gestionTurnos.InsertarTurno(turno);

        }

        public DataTable ObtenerMeses()
        {
            return gestionTurnos.ObtenerMeses();
        }

        public DataTable ObtenerAnios()
        {
            return gestionTurnos.ObtenerAnios();
        }
        public string ObtenerMedicoConMasTurnos(int mes, int anio)
        {
            return gestionTurnos.ObtenerMedicosConMasTurnos(mes, anio);
        }

        public DataTable cargarPresente()
        {
            DataTable dataTable = new DataTable();
            dataTable = gestionTurnos.CargarPresente();
            return dataTable;
        }

        public void CambiarEstadoTurno(string CodTurno)
        {
            gestionTurnos.CambiarEstadoTurno(CodTurno);
        }
    }

}

