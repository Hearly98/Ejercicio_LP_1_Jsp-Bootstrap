<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style type="text/css">
   html{
    width: 90%;
    margin: 3% auto;
    }
</style>

<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
<title>Trabajo Grupal</title>
</head>
<body>
			<header>
			<nav>
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" aria-current="page" href="#">Principal</a>
			  </li>
			  <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Mantenedores</a>
			    <ul class="dropdown-menu">
			      <li><a class="dropdown-item" href="#">Item</a></li>
			      <li><a class="dropdown-item" href="#">Item</a></li>
			      <li><a class="dropdown-item" href="#">Item</a></li>
			    </ul>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#">Reportes</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link disabled">Soporte</a>
			  </li>
			</ul>
		</nav>
		</header>
		<br>
<main class="accordion" id="accordionExample">
	<div class="accordion-item">
			<h4 class="accordion-header"> 
			<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
	        Principales Noticias
	      	</button>
	      	</h4>
      		<div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
	      		<div class="accordion-body">
	        	<strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>
	        	</div>
			</div>
	</div>
	<div class="accordion-item">
			<h4 class="accordion-header"> 
			<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
	        Ultimas Noticias
	      	</button>
	      	</h4>
      		<div id="collapseTwo" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
	      		<div class="accordion-body">
	        	<strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>
	        	</div>
			</div>
	</div>
	</main>
</body>
<br>
<footer class="card text-center">
	<span class="card-header">Footer</span>
	<div class="card-body">
		<h3 class="card-title">Cibertec</h3>
		<p class="card-text">Creado y soportado por Sebastian Huertas</p>
		<button class="btn btn-primary">Contáctanos</button>
	</div>
	<span class="card-footer text-body-secondary">2023</span>
</footer>
</html>