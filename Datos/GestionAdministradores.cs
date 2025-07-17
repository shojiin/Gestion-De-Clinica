using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;
using Entidades;

namespace Datos
{
    public class GestionAdministradores
    {

        // [+] ---------- CONECCIÓN A LA BASE DE DATOS ---------- [+]
        private string Conexion = @"Data Source=localhost\SQLEXPRESS; Initial Catalog=ClinicaGrupo15;Integrated Security = True";

        // [+] ---------- OBJETO DE LA CLASE ADMINISTRADORES ---------- [+]
        Administradores _Admin = new Administradores();

        // [+] ---------- OBTENER CONEXIÓN ---------- [+]
        private SqlConnection ObtenerConexion()
        {
            SqlConnection conexion = new SqlConnection(Conexion);
            return conexion;
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

                SqlCommand comando = new SqlCommand("SELECT * FROM Administradores WHERE Legajo_Admin = @Legajo AND Contraseña_Admin = @Password", conexion);
                comando.Parameters.AddWithValue("@Legajo", Legajo);
                comando.Parameters.AddWithValue("@Password", Password);

                // EJECUTAR COMANDO SQL Y OBTENER RESULTADO
                SqlDataReader reader = comando.ExecuteReader();

                // VERIFICAR SI HAY FILAS QUE COINCIDEN CON LA CONSULTA
                if (reader.HasRows)
                {
                    Respuesta = 1; // USUARIO ADMINISTRADOR VÁLIDO
                }
                else
                {
                    Respuesta = 0; // USUARIO NO VÁLIDO
                }

                reader.Close();

            }

            return Respuesta;

        }

        // [+] ---------- OBTENER USUARIO ADMINISTRADOR ---------- [+]

        public string ObtenerUsuario(string TB_Legajo)
        {
            string NombreCompleto = string.Empty;

            /* USING PARA MANEJAR LA CONEXIÓN Y CERRARLA LUEGO AUTOMÁTICAMENTE
            AL SALIR EJECUTA Dispose() DE SqlConnection QUE CONTIENE LLAMADA INTERNA A Close() */
            using (SqlConnection conexion = ObtenerConexion())
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("SELECT Nombre_Admin, Apellido_Admin FROM Administradores WHERE Legajo_Admin = @Legajo", conexion);
                comando.Parameters.AddWithValue("@Legajo", TB_Legajo);
                
                // EJECUTAR COMANDO SQL Y OBTENER RESULTADO
                SqlDataReader reader = comando.ExecuteReader();
                
                if ( reader.Read() )
                {
                    NombreCompleto = $"{reader["Nombre_Admin"]}" + ", " + $"{reader["Apellido_Admin"]}";
                }
                
                reader.Close();
            }

            return NombreCompleto;

        }

    }
}
