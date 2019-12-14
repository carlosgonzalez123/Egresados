<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Listado de experiencias | UFPS</title>

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

<c:set var="user" scope="request" value = "${request.Scope.user}"></c:set>

	<form class="container-form-reg">
		<p class="txtlogin">Listar Experiencia de Egresado ${user}</p>

		<c:forEach var="n" items="${exp}">
							<tr>
								<td id="titulo"class="text-center font-weight-light text-white"><c:out
										value="${exp}" /></td>

								<td id="lugar"class="text-center font-weight-light text-white"><c:out
										value="${n.lugar}" /></td>
								<td id="fecha_fin"class="text-center font-weight-light text-white"><c:out
										value="${n.periodofin}" /></td>
								<td class="text-center font-weight-light text-white"><c:out
										value="${n.nivel.getDescripcion()}" /></td>
								<td class="text-center font-weight-light text-white	"><a class="alerta"
									href="/RegistroEstudio">editar</a></td>
							</tr>
						</c:forEach>
		</div>

		<button class="btn red txtwhite">Continuar</button>
	</form>
</section>

</body>
</html>