<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Registrar experiencia | UFPS</title>

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

	<form class="container-form-reg"method="post" action="InsertarExperiencia">
		<p class="txtlogin">Registrar Experiencia de Egresado</p>

		<div class="container-cmp">
			<div class="contenedor-cmp">
				<p class="txtform txtposition">Descripción</p>
				<textarea class="areaform" name="descripcion" rows="10" cols="50"></textarea>
			</div>
			<div class="icoverificacion">
				<span class="icon-checkmark txtverde"></span>
			</div>
		</div>

		<div class="container-cmp">
			<div class="contenedor-cmp">
				<p class="txtform txtposition">Funciones</p>
				<input id="" class="cmpform" type="" name="funciones">
			</div>
			<div class="icoverificacion">
				<span class="icon-checkmark txtverde"></span>
			</div>
		</div>

		<div class="container-two-reg">
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Fecha inicio</p>
					<input id="" class="cmpform" type="" name="f_inicio">
				</div>
				<div class="icoverificacion">
					<span class="icon-checkmark txtverde"></span>
				</div>
			</div>
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Fecha fin</p>
					<input id="" class="cmpform" type="" name="f_final">
				</div>
				<div class="icoverificacion">
					<span class="icon-checkmark txtverde"></span>
				</div>
			</div>
		</div>

		<button class="btn red txtwhite">Continuar</button>
	</form>
</section>

</body>
</html>