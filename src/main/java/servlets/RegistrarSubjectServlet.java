package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mantenimientos.GestionSubject;
import model.Subject;

/**
 * Servlet implementation class RegistrarSubjectServlet
 */
@WebServlet(description = "SubjectServlet", urlPatterns = { "/SubjectServlet" })
public class RegistrarSubjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrarSubjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String opcion=request.getParameter("type");
		
		switch(opcion) {
		case "reg" : registrar(request, response); break;
		case "act" : actualizar(request, response); break;
		case "eli" : eliminar(request, response); break;
		case "lst" : listar(request, response); break;
		case "editar": editar(request,response); break; 
		default:
			request.setAttribute("mensaje", "<div class='alert alert-danger' role= 'alert'>Ocurrió un problema</div>");
			request.getRequestDispatcher("subject.jsp").forward(request, response);
		}
		
	}

	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int Subject = Integer.parseInt(request.getParameter("txtId"));
		//entradas
		String code= request.getParameter("txtCode");
		String name= request.getParameter("txtName");
		String level= request.getParameter("txtLevel");
		String teacher= request.getParameter("txtTeacher");
		
		//crear un objeto
		
		Subject s= new Subject();
		s.setIdsubject(Subject);
		s.setCode(code);
		s.setName(name);
		s.setLevel(level);
		s.setTeacher(teacher);
		
		//proceso de registro -> clase de Gestion
		
		GestionSubject gestion = new GestionSubject();
		int ok = gestion.registrar(s);
		
		
		//validacion
		if(ok==0) {
			request.setAttribute("mensaje", "<div class='alert alert-danger' role= 'alert'> Error al registrar</div>");
			request.getRequestDispatcher("subject.jsp").forward(request, response);
		}else {
			request.setAttribute("mensaje", "<div class='alert alert-success' role= 'alert'>Registro OK</div>");
			request.getRequestDispatcher("subject.jsp").forward(request, response);
		}

	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//entradas -> parametros para el filtrado
		
		//proceso de listado -> clase de Gestion
		
		GestionSubject gestion = new GestionSubject();
		List<Subject> data= gestion.listado();
		
	
		//envia la variable a la pagina como atributo llamado "data"
			request.setAttribute("data", data);
			request.getRequestDispatcher("subject.jsp").forward(request, response);
}
	
	private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//entradas
			int idSubject=Integer.parseInt(request.getParameter("txtId"));
			
			
			//crear un objeto
			
			Subject s= new Subject();
			s.setIdsubject(idSubject);
			//proceso de eliminacion -> clase de Gestion
			
			GestionSubject gestion = new GestionSubject();
			int ok = gestion.eliminar(s);
			
			
			//validacion
			if(ok==0) {
				request.setAttribute("mensaje", "<div class='alert alert-danger' role= 'alert'> Error al eliminar</div>");
				request.getRequestDispatcher("subject.jsp").forward(request, response);
			}else {
				request.setAttribute("mensaje", "<div class='alert alert-success' role= 'alert'>Curso Eliminado</div>");
				request.getRequestDispatcher("subject.jsp").forward(request, response);
			}
	

	}
	
	private void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//obtener el id del elemento a editar -> que se envia desde el btn de la tabla (listado)
		
			int id= Integer.parseInt(request.getParameter("id"));
		
		//obtener un obj de tipo "Subject" segun el id
			
			GestionSubject gestion = new GestionSubject();
			Subject s = gestion.buscar(id);
			
			//enviar el obj encontrado a la pagina
			
			request.setAttribute("s", s);
			request.getRequestDispatcher("subject.jsp").forward(request, response);

	}

	

	private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		//entradas
			String code= request.getParameter("txtCode");
			String name= request.getParameter("txtName");
			String level= request.getParameter("txtLevel");
			String teacher= request.getParameter("txtTeacher");

			//validaciones
			if(code.isEmpty()) {
				request.setAttribute("mensaje", "<div class='alert alert-danger' role= 'alert'>Codigo no debe estar vacio</div>");
				request.getRequestDispatcher("subject.jsp").forward(request, response);
				return;
			}
			if(!code.matches("CU[0-9]{4}")) {
				request.setAttribute("mensaje", "<div class='alert alert-danger' role= 'alert'>Codigo no es correcto</div>");
				request.getRequestDispatcher("subject.jsp").forward(request, response);
				return;
			}
			
			
			
			//crear un objeto
			
			Subject s= new Subject();
			
			s.setCode(code);
			s.setName(name);
			s.setLevel(level);
			s.setTeacher(teacher);
			
			//proceso de registro -> clase de Gestion
			
			GestionSubject gestion = new GestionSubject();
			int ok = gestion.registrar(s);
			
			
			//validacion
			if(ok==0) {
				request.setAttribute("mensaje", "<div class='alert alert-danger' role= 'alert'> Error al registrar</div>");
				request.getRequestDispatcher("subject.jsp").forward(request, response);
			}else {
				request.setAttribute("mensaje", "<div class='alert alert-success' role= 'alert'>Registro OK</div>");
				request.getRequestDispatcher("subject.jsp").forward(request, response);
			}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
