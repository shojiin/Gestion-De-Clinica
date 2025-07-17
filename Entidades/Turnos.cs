using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Turnos
    {
        // ---------- PROPIEDADES ----------

        private string Cod_Turno;
        private string LegajoMedico_Turno;
        private string DNIPaciente_Turno;
        private string LegajoAdmin_Turno;
        private string Dia_Turno;
        private string Horarios_Turno;
        private bool Estado_Turno;


        // ---------- CONSTRUCTORES ----------

        // CONSTRUCTOR POR DEFECTO
        public Turnos()
        {
            Cod_Turno = string.Empty;
            LegajoMedico_Turno = string.Empty;
            DNIPaciente_Turno = string.Empty;
            LegajoAdmin_Turno = string.Empty;
            Dia_Turno = string.Empty;
            Horarios_Turno = string.Empty;
            Estado_Turno = false;
        }

        // CONSTRUCTOR CON TODOS LOS PARÁMETROS

        public Turnos(string cod_Turno, string legajoMedico_Turno, string dNIPaciente_Turno, string legajoAdmin_Turno, string dia_Turno, string horarios_Turno, bool estado_turno)
        {
            Cod_Turno = cod_Turno;
            LegajoMedico_Turno = legajoMedico_Turno;
            DNIPaciente_Turno = dNIPaciente_Turno;
            LegajoAdmin_Turno = legajoAdmin_Turno;
            Dia_Turno = dia_Turno;
            Horarios_Turno = horarios_Turno;
            Estado_Turno = estado_turno;
        }

        // SETTERS Y GETTERS

        public string _Cod_Turno
        {
            get { return Cod_Turno; }
            set { Cod_Turno = value; }
        }

        public string _LegajoMedico_Turno
        {
            get { return LegajoMedico_Turno; }
            set { LegajoMedico_Turno = value; }
        }

        public string _DNIPaciente_Turno
        {
            get { return DNIPaciente_Turno; }
            set { DNIPaciente_Turno = value; }
        }

        public string _LegajoAdmin_Turno
        {
            get { return LegajoAdmin_Turno; }
            set { LegajoAdmin_Turno = value; }
        }

        public string _Dia_Turno
        {
            get { return Dia_Turno; }
            set { Dia_Turno = value; }
        }

        public string _Horarios_Turno
        {
            get { return Horarios_Turno; }
            set { Horarios_Turno = value; }
        }
        public bool _Estado_Turno
        {
            get { return _Estado_Turno; }

            set { Estado_Turno = value; }
        }
    }
}
