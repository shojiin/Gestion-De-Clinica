using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;
using Entidades;
using System.Runtime.CompilerServices;
using System.IO;

namespace Datos
{
    public class GestionMedicos
    {
        //CONEXION A LA BASE DE DATOS
        private string Conexion = @"Data Source=localhost\SQLEXPRESS; Initial Catalog=ClinicaGrupo15;Integrated Security = True";

        //OBJETO DE LA CLASE MEDICOS
        Medicos _Medico = new Medicos();

        //OBTENER CONEXION
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

        //MÉTODO PARA OBTENER TODOS LOS MÉDICOS
        public void ObtenerMedicos(DataTable dataTable)
        {
            SqlConnection conexion = ObtenerConexion();
            string consultaSQL = "SELECT * FROM Medicos WHERE Estado_Medico = 1";
            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            SqlDataAdapter adaptador = new SqlDataAdapter(comando);
            adaptador.Fill(dataTable);

            conexion.Close();
        }

        //MÉTODO PARA FILTRAR MÉDICOS POR LEGAJO
        public DataTable FiltrarMedicosPorLegajo(string legajo)
        {
            DataTable dataTable = new DataTable();

            SqlConnection conexion = ObtenerConexion();
            conexion.Open();

            string consultaSQL = "SELECT * FROM Medicos WHERE Legajo_Medico = @Legajo AND Estado_Medico = 1";
            SqlCommand comando = new SqlCommand(consultaSQL, conexion);
            comando.Parameters.AddWithValue("@Legajo", legajo);
            SqlDataAdapter adaptador = new SqlDataAdapter(comando);
            adaptador.Fill(dataTable);

            conexion.Close();

            return dataTable;
        }


        //MÉTODO PARA ACTUALIZAR UN MÉDICO
        public void actualizarMedicos(Medicos medico)
        {
            SqlConnection conexion = ObtenerConexion();
            conexion.Open();
            String ConsultaSQL = "UPDATE Medicos SET Nombre_Medico = @Nombre, Apellido_Medico = @Apellido, CodEspecialidad_Medico = @Especialidad, " +
                "Correo_Medico = @Correo, Telefono_Medico = @Telefono, Sexo_Medico = @Sexo, Nacionalidad_Medico = @Nacionalidad, Provincia_Medico = @Provincia," +
                "Ciudad_Medico = @Ciudad, Direccion_Medico = @Direccion, DiasAtencion_Medico = @DiasAtencion, HorarioInicio_Medico = @HorarioInicio, " +
                "HorarioFin_Medico = @HorarioFin WHERE Legajo_Medico = @Legajo";
            SqlCommand comando = new SqlCommand(ConsultaSQL, conexion);

            comando.Parameters.AddWithValue("@Legajo", medico.Legajo_Medico);
            comando.Parameters.AddWithValue("@Nombre", medico.Nombre_Medico);
            comando.Parameters.AddWithValue("@Apellido", medico.Apellido_Medico);
            comando.Parameters.AddWithValue("@Especialidad", medico.CodEspecialidad_Medico);
            comando.Parameters.AddWithValue("@Correo", medico.Correo_Medico);
            comando.Parameters.AddWithValue("@Telefono", medico.Telefono_Medico);
            comando.Parameters.AddWithValue("@Sexo", medico.Sexo_Medico);
            comando.Parameters.AddWithValue("@Nacionalidad", medico.Nacionalidad_Medico);
            comando.Parameters.AddWithValue("@Provincia", medico.Provincia_Medico);
            comando.Parameters.AddWithValue("@Ciudad", medico.Ciudad_Medico);
            comando.Parameters.AddWithValue("@Direccion", medico.Direccion_Medico);
            comando.Parameters.AddWithValue("@DiasAtencion", medico.DiasAtencion_Medico);
            comando.Parameters.AddWithValue("@HorarioInicio", medico.HorarioInicio_Medico);
            comando.Parameters.AddWithValue("@HorarioFin", medico.HorarioFin_Medico);

            //executar el comando
            comando.ExecuteNonQuery();
            ObtenerConexion().Close();
        }

        public void DarDeBajaMedico(string legajo)
        {
            using (SqlConnection conexion = ObtenerConexion())
            {
                conexion.Open();
                string consultaSQL = "UPDATE Medicos SET Estado_Medico = 0 WHERE Legajo_Medico = @Legajo";
                SqlCommand comando = new SqlCommand(consultaSQL, conexion);
                comando.Parameters.AddWithValue("@Legajo", legajo);
                comando.ExecuteNonQuery();
            }
        }

        // VERIFICAR SI EXISTE UN MÉDICO POR LEGAJO 
        public bool ExisteLegajoMedico(string Legajo)
        {
            SqlConnection conexion = new SqlConnection(Conexion);
            conexion.Open();

            string consulta = "SELECT COUNT(*) FROM Medicos WHERE Legajo_Medico = @Legajo";
            SqlCommand comando = new SqlCommand(consulta, conexion);
            comando.Parameters.AddWithValue("@Legajo", Legajo);

            int cantidad = (int)comando.ExecuteScalar();
            conexion.Close();
            return cantidad > 0; 
        }

        // -------------------------------------------------------------------------------------------------
        // --------------------------------------------- LOGIN ---------------------------------------------
        // -------------------------------------------------------------------------------------------------

        // [+] ---------- VERIFICACIÓN DE USUARIOS ---------- [+]

        public int ValidarLogin(string Legajo, string Password)
        {

            int Respuesta = 0; // USUARIO NO VÁLIDO POR DEFECTO

            /* USING PARA MANEJAR LA CONEXIÓN Y CERRARLA LUEGO AUTOMÁTICAMENTE
            AL SALIR EJECUTA Dispose() DE SqlConnection QUE CONTIENE LLAMADA INTERNA A Close() */
            using (SqlConnection conexion = ObtenerConexion())
            {

                conexion.Open();

                SqlCommand comando = new SqlCommand("SELECT * FROM Medicos WHERE Legajo_Medico = @Legajo AND Contraseña_Medico = @Password", conexion);
                comando.Parameters.AddWithValue("@Legajo", Legajo);
                comando.Parameters.AddWithValue("@Password", Password);

                // EJECUTAR COMANDO SQL Y OBTENER RESULTADO
                SqlDataReader reader = comando.ExecuteReader();

                // VERIFICAR SI HAY FILAS QUE COINCIDEN CON LA CONSULTA
                if (reader.HasRows)
                {
                    Respuesta = 2; // USUARIO MÉDICO VÁLIDO
                }
                else
                {
                    Respuesta = 0; // USUARIO NO VÁLIDO
                }

                reader.Close();

            }

            return Respuesta;

        }

        // [+] ---------- OBTENER USUARIO MÉDICO ---------- [+]

        public string ObtenerUsuario(string TB_Legajo)
        {

            string NombreCompleto = string.Empty;
            using (SqlConnection conexion = ObtenerConexion())
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("SELECT Nombre_Medico, Apellido_Medico FROM Medicos WHERE Legajo_Medico = @Legajo", conexion);
                comando.Parameters.AddWithValue("@Legajo", TB_Legajo);

                SqlDataReader reader = comando.ExecuteReader();

                if (reader.Read())
                {
                    NombreCompleto = $"{reader["Nombre_Medico"]}" + ", " + $"{reader["Apellido_Medico"]}";
                }

                reader.Close();
            }

            return NombreCompleto;

        }

        // -------------------------------------------------------------------------------------------------
        // ----------------------------------------- ALTA PACIENTE -----------------------------------------
        // -------------------------------------------------------------------------------------------------

        // [+] ---------- LISTAR PROVINCIAS ---------- [+]

        public DataTable Provincias()
        {
            DataTable dataTable = new DataTable();
            using (SqlConnection conexion = ObtenerConexion())
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("SELECT * FROM Provincias", conexion);
                SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                adaptador.Fill(dataTable);
            }
            return dataTable;
        }

        // [+] ---------- LISTAR LOCALIDADES ---------- [+]

        public DataTable Localidades(string CodProvincia)
        {
            DataTable dataTable = new DataTable();
            using (SqlConnection conexion = ObtenerConexion())

            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("SELECT * FROM Ciudades WHERE CodProvincia = @CodProvincia", conexion);
                comando.Parameters.AddWithValue("@CodProvincia", CodProvincia);
                SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                adaptador.Fill(dataTable);
            }

            return dataTable;
        }

        // [+] ---------- LISTAR ESPECIALIDADES ---------- [+]

        public DataTable Especialidades()
        {
            DataTable dataTable = new DataTable();
            using (SqlConnection conexion = ObtenerConexion())
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("SELECT * FROM Especialidades", conexion);
                SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                adaptador.Fill(dataTable);
            }
            return dataTable;
        }

        // [+] ---------- REGISTRAR MÉDICO ---------- [+]

        public void RegistrarMedico(Medicos medico)
        {
            using (SqlConnection conexion = ObtenerConexion())
            {
                conexion.Open();
                string consultaSQL = "INSERT INTO Medicos (Legajo_Medico, DNI_Medico, Nombre_Medico, Apellido_Medico, CodEspecialidad_Medico, Correo_Medico, Telefono_Medico, " +
                    "Sexo_Medico, Nacionalidad_Medico, Provincia_Medico, Ciudad_Medico, Direccion_Medico, DiasAtencion_Medico, HorarioInicio_Medico, FechaNacimiento_Medico, " +
                    "HorarioFin_Medico, Contraseña_Medico) VALUES (@Legajo, @DNI ,@Nombre, @Apellido, @Especialidad, @Correo, @Telefono, @Sexo, @Nacionalidad, " +
                    "@Provincia, @Ciudad, @Direccion, @DiasAtencion, @HorarioInicio, @FechaNac, @HorarioFin, @Contraseña)";
                
                SqlCommand comando = new SqlCommand(consultaSQL, conexion);

                medico.Legajo_Medico = obtenerLegajo(medico); // Asignar el legajo generado
                comando.Parameters.AddWithValue("@Legajo", medico.Legajo_Medico);
                comando.Parameters.AddWithValue("@DNI", medico.DNI_Medico);
                comando.Parameters.AddWithValue("@Nombre", medico.Nombre_Medico);
                comando.Parameters.AddWithValue("@Apellido", medico.Apellido_Medico);
                
                DateTime FDN;
                DateTime.TryParse(medico.Fecha_Nacimiento_Medico, out FDN);
                comando.Parameters.AddWithValue("@FechaNac", FDN);

                comando.Parameters.AddWithValue("@Especialidad", medico.CodEspecialidad_Medico);
                comando.Parameters.AddWithValue("@Correo", medico.Correo_Medico);
                comando.Parameters.AddWithValue("@Telefono", medico.Telefono_Medico);
                comando.Parameters.AddWithValue("@Sexo", medico.Sexo_Medico);
                
                comando.Parameters.AddWithValue("@Nacionalidad", medico.Nacionalidad_Medico);
                comando.Parameters.AddWithValue("@Provincia", medico.Provincia_Medico);
                comando.Parameters.AddWithValue("@Ciudad", medico.Ciudad_Medico);
                comando.Parameters.AddWithValue("@Direccion", medico.Direccion_Medico);
                
                
                comando.Parameters.AddWithValue("@DiasAtencion", medico.DiasAtencion_Medico);

                TimeSpan HSInicio;
                TimeSpan.TryParse(medico.HorarioInicio_Medico, out HSInicio);
                comando.Parameters.AddWithValue("@HorarioInicio", HSInicio);

                TimeSpan HSFinal;
                TimeSpan.TryParse(medico.HorarioFin_Medico, out HSFinal);
                comando.Parameters.AddWithValue("@HorarioFin", HSFinal);

                comando.Parameters.AddWithValue("@Contraseña", medico.Contrasenia_Medico);
                
                // Ejecutar el comando
                comando.ExecuteNonQuery();
            }
        }

        public string obtenerLegajo(Medicos medicos)
        {
            string legajo = string.Empty;

            SqlConnection conexion = ObtenerConexion();
            conexion.Open();

            string consulta = "SELECT TOP 1 Legajo_Medico FROM Medicos ORDER BY Legajo_Medico DESC";
            SqlCommand comando = new SqlCommand(consulta, conexion);

            SqlDataReader reader = comando.ExecuteReader();

            if (reader.Read())
            {
                string codigoActual = reader["Legajo_Medico"].ToString();  // Ej: "MED0007"

                if ( !string.IsNullOrEmpty(codigoActual) && codigoActual.Length >= 4)
                {
                    string parteNumerica = codigoActual.Substring(3); // "0007"

                    if (int.TryParse(parteNumerica, out int numero))
                    {
                        numero++; // 8
                        legajo = "MED" + numero.ToString("D4"); // "MED0008"
                    }
                }
            }
            else
            {
                // Si no hay registros, arranco desde MED0001
                legajo = "MED0001";
            }

            conexion.Close();

            return legajo;
        }

    }
}
