<%@ page import = "model.MiMaskota" %>
<%@ page import = "java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<div class="container">
	<center><h1>Informacion</h1></center>

	<table class="table table-dark">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Código</th>
				<th scope="col">Nombre del dueño</th>
				<th scope="col">Nombre de la mascota</th>
				<th scope="col">Fecha de la cita</th>
				<th scope="col">Telefono</th>
				<th scope="col">Raza</th>
				<th scope="col">Sexo</th>
				<th scope="col">Actualizar</th>
				

			</tr>
		</thead>

		<tbody>

			<%
			List<MiMaskota> mascota = (List<MiMaskota>) request.getAttribute("data");

			if (mascota != null) {
				for (MiMaskota item : mascota) {
			%>

			<tr>
				<td><%=item.getIdMaskota()%></td>
				<td><%=item.getCodigo()%></td>
				<td><%=item.getNombre_dueño()%></td>
				<td><%=item.getNombre_mascota()%></td>
				<td><%=item.getFecha_cita()%></td>
				<td><%=item.getTipo_atencion()%></td>
				<td><%=item.getDiagnostico()%></td>
				<td><%=item.getCel_dueño()%></td>


				<td>

					<form action="Procesos" method="post">
						<input type="hidden"  name="id" value="<%=item.getIdMaskota()%>">
						
						<button type="submit" class="btn btn-link" name="type" value="editar">
						<img alt="20px" width="20px" src="imagenes/descarga.png">
						
						</button>

					</form>

				</td>
			</tr>

			<%
			}
			}
			%>
		</tbody>
	</table>
</div>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>

</body>
</html>