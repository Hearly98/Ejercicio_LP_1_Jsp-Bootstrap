<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CRUD ESTUDIANTES</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6 col-sm-4">
				<%-- formulario  --%>
				<h1>Registrar Estudiantes</h1>
				<form action="SubjectServlet" method="post">
					<div class="form-group">						 
						<input type="hidden" class="form-control"
							id="id" name="txtId" value="${s.id}"  >
					</div>

					<div class="form-group">
						<label for="codigo">Nombres y apellidos</label> 
						<input type="text"  value="${s.nombre_apellido}"
							class="form-control" id="codigo" name="txtCode" maxlength="6">
					</div>
					<div class="form-group">
						<label for="nombre">Tipo de Documento</label> 
						<input type="text"  value="${s.name}"
							class="form-control" id="nombre" name="txtName">
					</div>
					<div class="form-group">
						<label for="nivel">Número</label> 
						<input type="text"  value="${s.num_doc}"
							class="form-control" id="nivel" name="txtLevel">
					</div>
					<div class="form-group">
						<label for="profesor">Carrera</label> 
						<input type="text"  value="${s.carrera}"
							class="form-control" id="profesor" name="txtTeacher">
					</div>
					<button type="submit" class="btn btn-primary" name="type"
						value="reg">Registrar</button>
					<button type="submit" class="btn btn-primary" name="type"
						value="act">Actualizar</button>
					<button type="submit" class="btn btn-warning" name="type"
						value="lst">Listar</button>
					
				</form>
				<br> ${mensaje }
			</div>
			<div class="col-6 col-sm-7">
				<%-- listado --%>
				<h3>Mantenedor Disponibles</h3>
				<table class="table">
					<thead>
						<tr>
							<th>Id</th>
							<th>Código</th>
							<th>Nombre</th>
							<th>Nivel</th>
							<th>Profesor</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tbody>
						<%-- obtener el obj "data" enviado como atributo desde el Servlet
							 y lo convertiré en un listado 
						--%>
						
				
						
						
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
</html>