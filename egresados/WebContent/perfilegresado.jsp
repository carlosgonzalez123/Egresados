<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Perfil egresado | UFPS</title>

	<link rel="stylesheet" type="text/css" href="iconos/style.css">
	<link rel="icon" type="ico/png" href="imagen/logoufps.png">
	<link href="https://fonts.googleapis.com/css?family=Roboto|Source+Sans+Pro&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
</head>
<body>

<%@include file="html/header.html" %>

<section class="container-slider-login">
	<article class="art-slider-login">
		<img class="img-slider-login" src="imagen/portada.jpg">
	</article>

	<form class="container-form-reg">
		<div style="position:relative;" class="duo-title-egresado">
			<p style="position:relative;" class="txtlogin">Perfil Egresado</p>
			<img class="icoegresado" src="imagen/egresado.png">
		</div>
		<div class="container-two-reg">
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Documento</p>
					<input id="" class="cmpform" type="" name="documento">
				</div>
			</div>
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Codigo</p>
					<input id="" class="cmpform" type="" name="codigo">
				</div>
			</div>
		</div>
		

		<div class="container-cmp no-grid">
			<div class="contenedor-cmp full">
				<p class="txtform txtposition">Nombre</p>
				<input id="" class="cmpform" type="" name="nombre">
			</div>
		</div>

		<div class="container-two-reg">
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Telefono</p>
					<input id="" class="cmpform" type="" name="telefono">
				</div>
			</div>
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Programa</p>
					<select class="cmpform" name="transporte">
						<option>Lorem ipsum</option>
						<option>Lorem ipsum</option>
					</select>
				</div>
			</div>
		</div>

		<div class="container-cmp no-grid">
			<div class="contenedor-cmp full">
				<p class="txtform txtposition">Perfil</p>
				<input id="" class="cmpform" type="" name="perfil">
			</div>
		</div>

		<div class="container-two-reg">
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Correo</p>
					<input id="" class="cmpform" type="" name="correo">
				</div>
			</div>
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Contraseña</p>
					<input id="" class="cmpform" type="" name="password">
				</div>
			</div>
		</div>
		<a href="regexperiencia.jsp" class="btn red txtwhite">Registrar Experiencia</a>
		<a href="Lists" class="btn red txtwhite">Registrar Estudios</a>
		
	</form>
</section>

</body>
</html>
