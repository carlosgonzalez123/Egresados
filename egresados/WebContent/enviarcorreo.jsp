<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Enviar correo | UFPS</title>

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

	<form class="container-form">
		<p class="txtlogin">Información del correo</p>
		<div class="container-cmp">
			<div class="contenedor-cmp">
				<p class="txtform txtposition">Correo</p>
				<input id="" class="cmpform" type="" name="correo">
			</div>
			<div class="icoverificacion">
				<span class="icon-checkmark txtverde"></span>
			</div>
		</div>
		<div class="container-cmp">
			<div class="contenedor-cmp">
				<p class="txtform txtposition">Mensaje</p>
				<textarea class="areaform" name="descripcion" rows="10" cols="50"></textarea>
			</div>
			<div class="icoverificacion">
				<span class="icon-checkmark txtverde"></span>
			</div>
		</div>
		<button class="btn red txtwhite">Enviar</button>
	</form>
</section>

</body>
</html>
