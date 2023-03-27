<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	 	//obtener y mostrar la fecha del sistema
	 	Date fecha =new Date();
		//para formatear nuestra fecha
		String cFecha = new SimpleDateFormat("dd/MM/yyyy").format(fecha);
	%>
	<%//solo mostrará la variable de fecha %>
	<p>Fecha actual: <%=cFecha %></p> 
	
</body>
</html>