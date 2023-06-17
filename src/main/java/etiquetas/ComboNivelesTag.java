package etiquetas;


import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport; //herencia de la clase tagsupport

import mantenimientos.GestionNivel;
import model.Nivel;

public class ComboNivelesTag extends TagSupport {

//ejemplo de etiqueta sin cuerpo 

	@Override
	public int doStartTag() throws JspException {
		// codigo que genera las opciones del combo
		GestionNivel gn = new GestionNivel();

		List<Nivel> lista = gn.listado();
		// controlador para imprimir en la pagina
		JspWriter out = pageContext.getOut();
		// recorre la lista para imprimir las opciones
		for (Nivel n : lista) {
			try {
				// imprimir en el jsp
				out.print("<option value='n.getLevel()'><n.getDes_level()></option>");

			} catch (Exception e) {
				System.out.print("Error al escribir en la pagina");
			}
		}
		return SKIP_BODY;
	}

	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
		return EVAL_PAGE;
	}
}
