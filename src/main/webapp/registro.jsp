<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>Registrar Usuario</h1>
		<form action="registro" method="get" name="registro">

			<div class="form-group">
				<label for="name">Nombres</label> <input type="text"
					class="form-control" id="name" placeholder="Nombre" name="name">
			</div>
			<div class="form-group">
				<label for="lastName">Apellidos</label> <input type="text"
					class="form-control" id="lastName" placeholder="Apellidos"
					name="lastName">
			</div>

			<div class="form-group">
				<label for="email">Correo Electrónico</label> <input type="email"
					class="form-control" id="email" placeholder="Correo" name="email">
			</div>
			<div class="form-group">
				<label for="password">Clave</label> <input type="password"
					class="form-control" id="password" placeholder="Contraseña"
					name="password">
			</div>

			<button type="submit" class="btn btn-primary btn-lg btn-block">Registrar</button>
		</form>
		<br>
         ${mensaje }
	</div>
	

	<script type="text/javascript">
		$(function() {
			$("form[name='registro']")
					.validate(
							{
								rules : {
									name:"required",
									lastName: "required",
								},
									email : {
										required : true,
										email : true
									},
									password : {
										required : true,
										minlength : 8
									},
									lastName : {
										required : true,
										pattern : /^[a-zA-Z ]*$/
									}
								},
								messages : {
									password : {
										required : "Ingrese su contraseña",
										minlength : "Tu contraseña debe tener al menos 8 caracteres"
									},
									email : "Ingrese su correo",
									name : {
										required : "Ingrese sus nombres",
										lettersonly : "Ingrese solo letras"
									},
									lastName : {
										required : "Ingrese sus apellidos",
										pattern : /^[a-zA-Z ]*$/,
										message : "Ingrese solo letras"
									}
								},
								submitHandler : function(form) {
									form.submit();
								}
							});
		});
	</script>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
</html>