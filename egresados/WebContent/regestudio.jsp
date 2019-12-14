<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Registrar estudio | UFPS</title>

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
		<p class="txtlogin">Registrar estudio</p>
		<div class="container-two-reg">
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Titulo</p>
					<input id="" class="cmpform" type="" name="titulo">
				</div>
				<div class="icoverificacion">
					<span class="icon-checkmark txtverde"></span>
				</div>
			</div>
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Nivel</p>
					<select class="cmpform" name="nivel">
						<option value="1">Lorem ipsum</option>
						<option value="2">Lorem ipsum</option>
					</select>
				</div>
				<div class="icoverificacion">
					<span class="icon-checkmark txtverde"></span>
				</div>
			</div>
		</div>

		<div class="container-two-reg">
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Periodo Fin</p>
					<input id="" class="cmpform" type="" name="periodo">
				</div>
				<div class="icoverificacion">
					<span class="icon-checkmark txtverde"></span>
				</div>
			</div>
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Lugar</p>
					<input id="" class="cmpform" type="" name="lugar">
				</div>
				<div class="icoverificacion">
					<span class="icon-checkmark txtverde"></span>
				</div>
			</div>
		</div>

		<div class="container-cmp">
			<div class="contenedor-cmp">
				<p class="txtform txtposition">Perfil</p>
				<input id="" class="cmpform" type="" name="perfil">
			</div>
			<div class="icoverificacion">
				<span class="icon-checkmark txtverde"></span>
			</div>
		</div>

		<div class="container-two-reg">
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
		</div>
		<button class="btn red txtwhite">Continuar</button>
	</form>
</section>

</body>
</html>