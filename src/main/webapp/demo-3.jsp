<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<h3>Registrar Cursos</h3>

	<form>
		<div>
			<label>Código</label><input>	
		</div>
		<br>
		<div>
			<label>Nombre</label><input>	
		</div>
		<br>
		<div>
		<label>Nivel</label><input>	
		</div>
		<br>
		<div><label>Profesor</label><input>	
		</div>
		<br>
		<button> Enviar Datos</button>
		</form>
		<table class="table table-dark table-striped-columns";>
		<thead>
			<tr>
				<th>Id</th>
				<th>Codigo</th>
				<th>Nombre</th>
				<th>Nivel</th>
				<th>Profesor</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>2414</td>
				<td>Seguridad de Aplicaciones</td>
				<td>Intermedio</td>
				<td>José Gomez</td>
				<td><button class="btn btn-primary">Editar</button><button class="btn btn-danger">Eliminar</button></td>
			</tr>
			<tr>
				<td>2</td>
				<td>1956</td>
				<td>Desarrollo de Aplicaciones Móviles I</td>
				<td>Avanzado</td>
				<td>Diana Vera</td>
					<td><button class="btn btn-primary">Editar</button><button class="btn btn-danger">Eliminar</button></td>
			</tr>
			<tr>
				<td>3</td>
				<td>7878</td>
				<td>Programación Orientada a Objetos I</td>
				<td>Intermedio</td>
				<td>Julio Sanchez</td>
				<td><button class="btn btn-primary">Editar</button><button class="btn btn-danger">Eliminar</button></td>
			</tr>
		</tbody>
		</table>
</body>
</html>