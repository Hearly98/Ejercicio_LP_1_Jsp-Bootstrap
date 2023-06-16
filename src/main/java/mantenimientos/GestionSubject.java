package mantenimientos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import interfaces.SubjectInterface;
import model.Subject;
import utils.MySQLConexion;

//implementar los procesos(metodos) de la interface
public class GestionSubject implements SubjectInterface{

	@Override
	public int registrar(Subject s) {
		
		int ok=0; //variable de control
		// PLANTILLA DE BD
		Connection cn=null; //java.sql -> guardar la conexion con BD
		PreparedStatement psm=null; //preparar las sentencias a ejecutar
		
		
		try {
			//abre y captura la conexion
			cn=MySQLConexion.getConexion();
			//sentencia a ejecutar preparando los parametros
			String sql= "insert into subject values(null, ?, ?, ?, ?)";
			//convirtiendo cadena a sentencia sql
			psm = cn.prepareStatement(sql);
			//usar los parametro con la informacion del metodo
			psm.setString(1, s.getCode()); //1 representa el 1° ? (orden)
			psm.setString(2, s.getName());
			psm.setString(3, s.getLevel());
			psm.setString(4, s.getTeacher());
			//ejecutar la sentencia en la conexion y actualizar la variable de control
			ok=psm.executeUpdate(); //executeUpdate() -> es el proceso para reg, actualizar o eliminar
			
		}catch(Exception e){
			//capturar cualquier error con la conexion
			
			System.out.println("Error en el proceso REGISTRAR: " + e.getMessage());
		}finally {
			//cerrar la conexion
			MySQLConexion.closeConexion(cn);//cerrando la conexion usando la variable
		}
		return ok ;
	}

	@Override
	public int editar(Subject s) {
		// TODO Auto-generated method stub

		int ok=0; //variable de control
		// PLANTILLA DE BD
		Connection cn=null; //java.sql -> guardar la conexion con BD
		PreparedStatement psm=null; //preparar las sentencias a ejecutar
		
		
		try {
			//captura la conexion
			cn=MySQLConexion.getConexion();
			//sentencia a ejecutar preparando los parametros
			String sql= "update a set code=?, name=?,  level=?, teacher=? where idsubject= ?";
			psm = cn.prepareStatement(sql);
			//usar los parametro con la informacion del metodo
			psm.setString(1, s.getCode()); //1 representa el 1° ? (orden)
			psm.setString(2, s.getName());
			psm.setString(3, s.getLevel());
			psm.setString(4, s.getTeacher());
			psm.setInt(5, s.getIdsubject()); //id es un entero
			//ejecutar la sentencia en la conexion y actualizar la variable de control
			ok=psm.executeUpdate(); //executeUpdate() -> es el proceso para reg, actualizar o eliminar
			
		}catch(Exception e){
			//capturar cualquier error con la conexion
			
			System.out.println("Error en el proceso ACTUALIZAR: " + e.getMessage());
		}finally {
			//cerrar la conexion
			MySQLConexion.closeConexion(cn);//cerrando la conexion usando la variable
		}
		return ok ;
	
	}

	@Override
	public int eliminar(Subject s) {
		// TODO Auto-generated method stub

		int ok=0; //variable de control
		// PLANTILLA DE BD
		Connection cn=null; //java.sql -> guardar la conexion con BD
		PreparedStatement psm=null; //preparar las sentencias a ejecutar
		
		
		try {
			//captura la conexion
			cn=MySQLConexion.getConexion();
			//sentencia a ejecutar preparando los parametros
			String sql= "delete from subject where idsubject= ?";
			psm = cn.prepareStatement(sql);
			//usar los parametro con la informacion del metodo
			psm.setInt(1, s.getIdsubject()); 
			
			ok=psm.executeUpdate(); //executeUpdate() -> es el proceso para reg, actualizar o eliminar
			
		}catch(Exception e){
			//capturar cualquier error con la conexion
			
			System.out.println("Error en el proceso ELIMINAR: " + e.getMessage());
		}finally {
			//cerrar la conexion
			MySQLConexion.closeConexion(cn);//cerrando la conexion usando la variable
		}
		return ok ;
	}

	@Override
	public List<Subject> listado() { //devolverá una lista, no un entero
		
		//variable de control
		List<Subject> lista = new ArrayList<Subject>();
		
				// PLANTILLA DE BD
				Connection cn=null; //java.sql -> guardar la conexion con BD
				
				//preparar las sentencias a ejecutar
				PreparedStatement psm=null; 
				
				//importante!! en listado y consultas se agrega un ResultSet
				
				ResultSet rs = null; //guarda el resultado de la consultado
				
				
				try {
					
					//captura la conexion
					
					cn=MySQLConexion.getConexion();
					
					//sentencia a ejecutar preparando los parametros
					
					String sql= "select * from subject";
					
					psm = cn.prepareStatement(sql);
					
					 //ejecutar la consulta y  guardar el resultado
					
					rs=psm.executeQuery();
					
					//LLENAR MI LISTA CON LO GUARDADO EN EL RS
					
					while(rs.next()) {
						Subject s = new Subject();
						s.setIdsubject(rs.getInt("idSubject"));
						s.setCode(rs.getString("code"));
						s.setName(rs.getString("name"));
						s.setLevel(rs.getString("level"));
						s.setTeacher(rs.getString("teacher"));
						//agregamos el objeto a la lista
						lista.add(s);
					}
					
					
		}catch(Exception e){
			//capturar cualquier error con la conexion
			
			System.out.println("Error en el proceso LISTADO: " + e.getMessage());
		}finally {
			//cerrar la conexion
			MySQLConexion.closeConexion(cn);//cerrando la conexion usando la variable
		}
		return lista ;
	}

	@Override
	public List<Subject> listado(String teacher) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Subject buscar(int id) {
		
		Subject curso = null;
		
		// PLANTILLA DE BD
		Connection cn=null; 
		PreparedStatement psm=null; 
		ResultSet rs = null; 
		
		
		try {
			
			cn=MySQLConexion.getConexion();
			
			String sql= "select * from subject where idsubject = ?";
			
			psm = cn.prepareStatement(sql);
			psm.setInt(1, id);
			
			rs= psm.executeQuery();
			
			while(rs.next()) {
				curso = new Subject();
				curso.setIdsubject(rs.getInt("idSubject"));
				curso.setCode(rs.getString("code"));
				curso.setName(rs.getString("name"));
				curso.setLevel(rs.getString("level"));
				curso.setTeacher(rs.getString("teacher"));
			}
			
			
			}catch(Exception e){
				//capturar cualquier error con la conexion
				
				System.out.println("Error en el proceso LISTADO: " + e.getMessage());
			}finally {
				//cerrar la conexion
				MySQLConexion.closeConexion(cn);//cerrando la conexion usando la variable
			}
			return curso ;
				}
	
}
