using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Consulta
    {
        private string CodConsultas;
        private string LegajoMedico_Cons;
        private string DNIPaciente_Cons;
        private bool PresenciaPaciente;
        private string Observacion_Cons;
        private bool Estado;

        public Consulta()
        {
            CodConsultas = string.Empty;
            LegajoMedico_Cons = string.Empty;
            DNIPaciente_Cons = string.Empty;
            PresenciaPaciente = false;
            Observacion_Cons = string.Empty;
        }

        public Consulta(string codConsultas, string legajoMedico_Cons, string dNIPaciente_Cons, bool presenciaPaciente, string observacion_Cons)
        {
            CodConsultas = codConsultas;
            LegajoMedico_Cons = legajoMedico_Cons;
            DNIPaciente_Cons = dNIPaciente_Cons;
            PresenciaPaciente = presenciaPaciente;
            Observacion_Cons = observacion_Cons;
        }

        public string _CodConsultas
        {
            get { return CodConsultas; }
            set { CodConsultas = value; }
        }
        public string _LegajoMedico_cons
        {
            get { return LegajoMedico_Cons; }
            set { LegajoMedico_Cons = value; }
        }
        public string _DNIPaciente_cons
        {
            get { return DNIPaciente_Cons; }
            set { DNIPaciente_Cons = value; }
        }
        public bool _PresenciaPaciente
        {
            get { return PresenciaPaciente; }
            set { PresenciaPaciente = value; }
        }
        public string _Observacion_Cons
        {
            get { return Observacion_Cons; }
            set { Observacion_Cons = value; }
        }

        public bool _Estado
        {
            get { return Estado; }
            set { Estado = value; }
        }
    }
}
