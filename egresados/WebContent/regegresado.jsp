<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Registrar egresado | UFPS</title>

	<link rel="stylesheet" type="text/css" href="iconos/style.css">
	<link rel="icon" type="ico/png" href="imagen/logoufps.png">
	<link href="https://fonts.googleapis.com/css?family=Roboto|Source+Sans+Pro&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
</head>
<body>
<jsp:useBean id="pDao" class="dao.ProgramaDao"
		scope="request"></jsp:useBean>
<%@include file="html/header.html" %>

<section class="container-slider-login">
	<article class="art-slider-login">
		<img class="img-slider-login" src="imagen/portada.jpg">
	</article>

	<form class="container-form-reg"  method="POST" action="RegistrarEgresado" runat="server">
		<p class="txtlogin">Registrar egresado</p>
		<div class="container-two-reg">
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Documento</p>
					<input id="documento" class="cmpform" type="" name="documento">
				</div>
				<div class="icoverificacion">
					<span class="icon-checkmark txtverde"></span>
				</div>
			</div>
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Codigo</p>
					<input id="codigo" class="cmpform" type="" name="codigo">
				</div>
				<div class="icoverificacion">
					<span class="icon-checkmark txtverde"></span>
				</div>
			</div>
		</div>
		

		<div class="container-cmp">
			<div class="contenedor-cmp">
				<p class="txtform txtposition">Nombre</p>
				<input id="nombre" class="cmpform" type="" name="nombre">
			</div>
			<div class="icoverificacion">
				<span class="icon-checkmark txtverde"></span>
			</div>
		</div>

		<div class="container-two-reg">
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Telefono</p>
					<input id="telefono" class="cmpform" type="" name="telefono">
				</div>
				<div class="icoverificacion">
					<span class="icon-checkmark txtverde"></span>
				</div>
			</div>
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Programa</p>
						<select id="codPrograma" class="cmpform" name="codPrograma">
					<c:forEach var="p" items="${pDao.list()}">
						<option value="${p.codigo}">${p.nombre}</option>
					</c:forEach>
					</select>
				</div>
				
				<div class="icoverificacion">
					<span class="icon-checkmark txtverde"></span>
				</div>
			</div>
		</div>

		<div class="container-cmp">
			<div class="contenedor-cmp">
				<p class="txtform txtposition">Perfil</p>
				<input id="perfil" class="cmpform" type="" name="perfil">
			</div>
			<div class="icoverificacion">
				<span class="icon-checkmark txtverde"></span>
			</div>
		</div>

		<div class="container-two-reg">
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Correo</p>
					<input id="email" class="cmpform" type="" name="email">
				</div>
				<div class="icoverificacion">
					<span class="icon-checkmark txtverde"></span>
				</div>
			</div>
			<div class="container-cmp">
				<div class="contenedor-cmp">
					<p class="txtform txtposition">Contraseña</p>
					<input id="clave" class="cmpform" type="password" name="clave">
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
