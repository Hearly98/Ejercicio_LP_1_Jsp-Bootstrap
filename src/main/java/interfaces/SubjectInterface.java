package interfaces;

import java.util.List;

import model.Subject;

public interface SubjectInterface {
//SOLO Definen metodos (publicos) para la clase Subject
	
	//registrar un nuevo curso (Subject)
	public int registrar(Subject s); // NO ME DICE CON QUE BASE VA A TRABAJAR, SOLO DICE QUE SOLO VA A REGISTRAR
	
	//actualizar un curso
	public int actualizar(Subject s);
	
	//eliminar un curso
	public int eliminar(Subject s);
	
	//listar todos los cursos
	public List<Subject>listado();
	
	//listado de los cursos de un determinado profesor
	public List<Subject>listado(String teacher);
	
	//metodo para buscar un curso segun el codigo y devolver su informacion
	public Subject buscar (int id);
}
