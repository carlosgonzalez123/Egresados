<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado de Estudios</title>
</head>
<body>

<form class="text-center p-5" method="post" action="/RegistroEstudio"> 
<label>Titulo</label><input name="titulo">
<label>Lugar</label><input name="lugar">
<label>periodo de Fin</label><input name="periodoFin">
<select name="nivel">
<c:forEach var="e" items="${niveles_list}">
<option value="${e.id}">${e.descripcion}</option> 
</c:forEach>

</select>
 <button class="btn btn-info btn-block my-4" type="submit" id="btnIngresar">Registrar nuevo Estudio</button>
</form>

<tbody>
						<c:forEach var="n" items="${estduios_list}">
							<tr>
								<td id="titulo"class="text-center font-weight-light text-white"><c:out
										value="${n.titulo}" /></td>

								<td id="lugar"class="text-center font-weight-light text-white"><c:out
										value="${n.lugar}" /></td>
								<td id="fecha_fin"class="text-center font-weight-light text-white"><c:out
										value="${n.periodofin}" /></td>
								<td class="text-center font-weight-light text-white"><c:out
										value="${n.nivelBean.getDescripcion()}" /></td>
								<td class="text-center font-weight-light text-white	"><a class="alerta"
									href="/RegistroEstudio">editar</a></td>
							</tr>
							</br>
						</c:forEach>
</body>
</html>