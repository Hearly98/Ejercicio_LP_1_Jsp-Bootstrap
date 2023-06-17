<%@page import="model.Subject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empresa CiberFarma</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" 
		rel="stylesheet">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
		
	<div class="container">
		<div class="row">
			<div class="col-6 col-sm-4">
				
				<h1>Registrar Cursos</h1>
				
			<!-- formulario -->
					<form action="SubjectServlet" method="post" >
					  
					   <div class="form-group">
					    <label for="id">Id</label>
					    <input type="text" 
					    class="form-control"  id="id"  name="txtId" value="${s.idsubject}"></div>
					    
					  <!-- Codigo -->
					  <div class="form-group">
					    <label for="codigo">Codigo</label>
					    <input type="text" 
					    class="form-control"  id="codigo"  name="txtCode" value="${s.code}"></div>
					    
					   <!--  Nombre -->
					  <div class="form-group">
					    <label for="nombre">Nombre</label>
					    <input type="text" 
					    class="form-control" id="nombre" name="txtName" value="${s.name}"></div>
					  <br>
					  	<!-- Level -->
					    <div class="form-group">
					    <label for="level">Level</label>
					    <input type="text"
					     class="form-control"  id="level" name="txtLevel" value="${s.level}"></div>
					    
					   <!--  Profesor -->
					  <div class="form-group">
					    <label for="profesor">Profesor</label>
					    <input type="text" class="form-control" id="profesor" 
					   name="txtTeacher" value="${s.teacher}">
					  </div>
					  
					  <br>
					  
					  <button type="submit" class="btn btn-primary" name="type" value="reg">Registrar</button>
					  <button type="submit" class="btn btn-danger" name="type" value="eli">Eliminar</button>
					  <button type="submit" class="btn btn-warning" name="type" value="lst">Listar</button>
					  <button type="submit" class="btn btn-warning" name="type" value="reset">Limpiar</button>
					</form>
					<br>
					${mensaje }
			</div>
			</div>
			<div class="row">
						<div class="col-6 col-sm-7">
							<h3>Cursos Disponibles</h3>
							<table class="table">
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
								<%-- obtener el obj data enviado como atributo desde eñ Servlet
									 y convertirlo en un listado
								--%>
								<%
									List<Subject> data = (List<Subject>) request.getAttribute("data");
								
									//validacion
									if(data != null){
										for (Subject s : data){ %>
											
												<tr>
												<th scope="row"><%=s.getIdsubject()%></th>
												<td><%=s.getCode() %></td>
												<td><%=s.getName() %></td>
												<td><%=s.getLevel()%></td>
												<td><%=s.getTeacher() %></td>
												<td>
													<form action="SubjectServlet" method="post">
														<input type="hidden" name="id" value="<%=s.getIdsubject()%>">
													<button 
													type ="submit" class="btn btn-link"
													name="type" value="editar"> 
														<img alt="" src="img/icons/edit.png">
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
					</div>
			</div>
		</div>
		
</body>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>

		
</html>