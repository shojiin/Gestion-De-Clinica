using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Datos
{
    public class GestionConsultas
    {
        private string Conexion = @"Data Source=localhost\SQLEXPRESS; Initial Catalog=ClinicaGrupo15;Integrated Security = True";

        Consulta consulta = new Consulta();

        public SqlConnection ObtenerConexion()
        {
            try
            {
                SqlConnection conexion = new SqlConnection(Conexion);
                return conexion;
            }
            catch (Exception)
            {
                return null; // Retorna null si hay un error al crear la conexión
            }

        }

        public void ObtenerConsultas(DataTable dataTable)
        {
            SqlConnection conexion = ObtenerConexion();
            string consultaSQL = "SELECT * FROM Consultas";
            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            SqlDataAdapter adaptador = new SqlDataAdapter(comando);
            adaptador.Fill(dataTable);

            conexion.Close();
        }
        public string obtenerCodConsulta()
        {
            string cod = string.Empty;

            SqlConnection conexion = ObtenerConexion();
            conexion.Open();

            string consultaSQL = "SELECT TOP 1 CodConsultas FROM Consultas ORDER BY CodConsultas DESC";
            SqlCommand comando = new SqlCommand(consultaSQL, conexion);

            SqlDataReader reader = comando.ExecuteReader();

            if (reader.Read())
            {
                string codigoActual = reader["codConsultas"].ToString();  // Ej: "MED0007"

                if (!string.IsNullOrEmpty(codigoActual) && codigoActual.Length >= 4)
                {
                    string parteNumerica = codigoActual.Substring(3); // "0007"

                    if (int.TryParse(parteNumerica, out int numero))
                    {
                        numero++; // 8
                        cod = "CON" + numero.ToString("D4"); // "MED0008"
                    }
                }
            }
            else
            {
                // Si no hay registros, arranco desde MED0001
                cod = "CON0001";
            }

            conexion.Close();

            return cod;
        }
         public DataTable CargarConsutasConPacientes()
        {
            DataTable dt = new DataTable();

            using (SqlConnection conexion = ObtenerConexion())
            {
                string consulta = @"SELECT * FROM Consultas INNER JOIN Pacientes ON DNIPaciente_Cons = DNI_Paciente";

                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                {
                    conexion.Open();
                    adapter.Fill(dt);
                }
            }

            return dt;
        }

        public DataTable CargarTablaxDia(DateTime dia)
        {
            DataTable dt = new DataTable();

            using (SqlConnection conexion = ObtenerConexion())
            {
                string consulta = @"SELECT *  FROM Consultas  INNER JOIN Pacientes ON DNIPaciente_Cons = DNI_Paciente INNER JOIN Turnos ON DNI_Paciente = DNIPaciente_Turnos WHERE CONVERT(date, Dia_Turnos) = @dia";

                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    // Asegurate que 'dia' venga en formato yyyy-MM-dd
                    cmd.Parameters.AddWithValue("@dia", dia);

                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        conexion.Open();
                        adapter.Fill(dt);
                    }
                }
            }

            return dt;
        }
        

        public int GuardarConsulta(Consulta consulta)
        {
            using (SqlConnection conexion = ObtenerConexion())
            {
                string consultaSQL = @"INSERT INTO Consultas 
                               (CodConsultas, LegajoMedico_Cons, DNIPaciente_Cons, PresenciaPaciente, Observacion_Cons) 
                               VALUES (@Cod, @Medico, @DNI, @Presente, @Observacion)";

                using (SqlCommand comando = new SqlCommand(consultaSQL, conexion))
                {
                    comando.Parameters.AddWithValue("@Cod",obtenerCodConsulta());
                    comando.Parameters.AddWithValue("@Medico", consulta._LegajoMedico_cons);
                    comando.Parameters.AddWithValue("@DNI", consulta._DNIPaciente_cons);
                    comando.Parameters.AddWithValue("@Presente", consulta._PresenciaPaciente);
                    comando.Parameters.AddWithValue("@Observacion", consulta._Observacion_Cons);

                    conexion.Open();
                   int filasAfectas =  comando.ExecuteNonQuery();
                    return filasAfectas;
                }
            }
        }
    }
}
