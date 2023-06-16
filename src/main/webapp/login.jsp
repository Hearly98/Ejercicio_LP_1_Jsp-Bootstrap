<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empresa Ciberfarma</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" 
		rel="stylesheet">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
		<div class="container">
			<h1>Iniciar Sesion</h1>
			
			<!-- formulario -->
			
			<form action="ingreso" method="post" name="registration">
			  
			  <!-- correo -->
			  <div class="form-group">
			    <label for="email">Correo</label>
			    <input type="email" class="form-control" 
			    id="email" placeholder="Correo" name="email"></div>
			    
			   <!--  contraseña -->
			  <div class="form-group">
			    <label for="password">Clave</label>
			    <input type="password" class="form-control" id="password" 
			    placeholder="Contraseña" name="password">
			  </div>
			  <br>
			  <button type="submit" class="btn btn-primary btn-lg btn-block">Iniciar Sesion</button>
			</form>
			<br>
			${mensaje }
		</div>
		
</body>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		$(function() {
		$("form[name='registration']").validate({
		rules: { 
		email: {
		required: true,
		email: true
		},
		password: {
		required: true,
		minlength: 8
		}
		},
		messages: {
		password: {
		required: "Ingrese su contraseña",
		minlength: "Tu contraseña debe tener al menos 5 caracteres"
		},
		email: "Ingrese su correo"
		},
		submitHandler: function(form) {
		form.submit();
		}
		});
		});
		</script>
		
		
</html>