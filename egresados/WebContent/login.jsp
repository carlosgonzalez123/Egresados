<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Iniciar sesion | UFPS</title>

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

	<div class="container-form">
		<p class="txtlogin">Ingresar la información</p>
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
				<p class="txtform txtposition">Contraseña</p>
				<input id="" class="cmpform" type="" name="password">
			</div>
			<div class="icoverificacion">
				<span class="icon-checkmark txtverde"></span>
			</div>
		</div>
		<button class="btn red txtwhite">Continuar</button>
		<button class="btn gris txtwhite">Recuperar contraseña</button>
	</div>
</section>

</body>
</html>