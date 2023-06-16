package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 
 
 
 */
//La clase LoginServlet con el nombre ingreso

@WebServlet(name = "ingreso", description = "Controlador para el ingreso a la App", urlPatterns = { "/ingreso" })//para ingresar a la clase server usaremos el patron /ingreso


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //Se ejecuta cuando llamamos al servlet desde un URL (Linea de direccion) o desde un href
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//atajo syso + ctrl + espace-bar
		
		System.out.println("Ingreso al Servlet con metodo Get");
		
		//procesos adicional
		
		//generar una respuesta
		
		response.sendRedirect("login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//Se ejecuta cuando llamamos a un Servlet desde un form con metodo post
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//se ejecuta cuando llamamos al servlet desde un formulario con metodo post
		System.out.println("Ingreso al Servlet con metodo Post");
		
		//procesos adicional
		String correo = request.getParameter("email");
		String clave = request.getParameter("password");
		
		//validacion
		
		//si el usuario y la contraseña es igual significa que es correcto
		if (correo.equals("admin@gmail.com") && clave.equals("123456")){
			
			//generar una respuesta
			response.sendRedirect("Principal.jsp");	
		}	else{
			//generar una respuesta
			//enviar un mensaje a la pagina
			request.setAttribute("mensaje", 
					"<div class='alert alert-danger' role='alert'>usuario o clave incorrecta</div>");
			request.getRequestDispatcher("login.jsp").forward(request, response);	
		}
		}
		


}
