package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registro
 */
@WebServlet(description = "registro_form", urlPatterns = { "/registro" })
public class registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("Ingreso al Servlet con metodo get");
			// procesos adicionales
			String nombre = request.getParameter("name");
			String lastname = request.getParameter("lastName");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			// generar una respuesta
			response.sendRedirect("login.jsp");
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub		doGet(request, response);
		System.out.println("Ingreso al Servlet con metodo post");
		// procesos adicionales
		// leer los campos del formulario > usando name
	
	}

}
