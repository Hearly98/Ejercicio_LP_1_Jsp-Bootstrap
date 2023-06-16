package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConexion {
	public static Connection getConexion() {
		Connection con = null;
		try {
			//1. instalar la libreria (conector o driver) MySQL
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2. prueba a establecer conexion con la base de datos
			
				//nombre de la base de datos
				String url = "jdbc:mysql://localhost:3306/demo?useSSL=false&useTimezone=true&serverTimezone=UTC";
				//nombre de usuario
				String usr = "root";
				//contraseña de usuario
				String psw = "sebas147";
				
			con = DriverManager.getConnection(url, usr, psw);
		} catch (ClassNotFoundException e) {
			System.out.println("Error >> Driver no Instalado!!" + e.getMessage());
		} catch (SQLException e) {
			System.out.println("Error >> de conexión con la BD" + e.getMessage());
		} catch (Exception e) {
			System.out.println("Error >> general : " + e.getMessage());
		}
		return con;
	}

	public static void closeConexion(Connection con) {
		try {
			con.close();
		} catch (SQLException e) {
			System.out.println("Problemas al cerrar la conexion");
		}
	}

}
