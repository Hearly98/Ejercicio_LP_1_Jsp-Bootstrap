
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mi Maskota</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
		<div class="container">
		
			<div class="row">
					<div class="col-6 col-sm-4">
						<!-- formulario -->
						<h1>Consulta Mi Maskota</h1>
			
	
			
			<form action="MiMaskotaServlet" method="post" >
			  
			   <div class="form-group">
			    <label for="id">Id</label>
			    <input type="text" 
			    class="form-control"  id="id"  name="txt_id"></div>
			    
			 
			  <div class="form-group">
			    <label for="codigo">Codigo</label>
			    <input type="text" 
			    class="form-control"  id="codigo"  name="txt_codigo"></div>
			    
		
			  <div class="form-group">
			    <label for="nombre">Nombre Dueño</label>
			    <input type="text" 
			    class="form-control" id="nombre" name="txt_dueño">
			  </div>
			  <br>
			
			    <div class="form-group">
			    <label for="mascota">Nombre mascota</label>
			    <input type="text"
			     class="form-control"  id="mascota" name="txt_mascota"></div>
			    
			  
			  <div class="form-group">
			    <label for="cita">Fecha de Cita</label>
			    <input type="text" class="form-control" id="cita" 
			   name="txt_cita">
			  </div>
			  <br>
			  <div class="form-group">
			    <label for="atencion">Tipo de Atencion</label>
			    <input type="text" class="form-control" id="atencion" 
			   name="txt_atencion">
			  </div>
			  <br>
			  <div class="form-group">
			    <label for="diagnostico">Diagnostico</label>
			    <input type="text" class="form-control" id="diagnostico" 
			   name="txt_diagnostico">
			  </div>
			  <br>
			  <div class="form-group">
			    <label for="celular">Celular</label>
			    <input type="text" class="form-control" id="celular" 
			   name="txt_celular">
			  </div>
			  <br>
			  <button type="submit" class="btn btn-primary" name="type" value="reg">Registrar</button>
			   <button type="submit" class="btn btn-primary" name="type" value="act">Actualizar</button>
			    <button type="submit" class="btn btn-danger" name="type" value="eli">Eliminar</button>
			     <button type="submit" class="btn btn-warning" name="type" value="lst">Listar</button>
			</form>
		</div>
		${mensaje}
					</div>
		
		
		
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
</body>
</html>