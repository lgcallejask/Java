<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="../../resources/estilo.css" rel="stylesheet" type="text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modificar Orden</title>
</head>
<h1>Modificar Orden ${id}</h1>
<body>
	<form:form modelAttribute="orden"
		action="../ModificarOrden/${orden.id}" method="post">
		<form:label path="Patente">Patente:</form:label>
		<form:input path="patente" maxlength="7" />
		<br>
		<form:label path="propietario">Propietario:</form:label>
		<form:select path="propietario.id">
			<c:forEach items="${propietarios}" var="propietario">
				<form:option value="${propietario.id}">
					<c:out value="${propietario.nombre}"></c:out>
				</form:option>
			</c:forEach>
		</form:select>
		<br>
		<form:label path="Marca">Marca:</form:label>
		<form:input path="marca" maxlength="50" />
		<br>
		<form:label path="Modelo">Modelo:</form:label>
		<form:input path="modelo" maxlength="50" />
		<br>
		<form:label path="Descripcion">Descripción:</form:label>
		<form:input path="descripcion" maxlength="256" />
		<br>
		<form:label path="Empleado">Empleado:</form:label>
		<form:select path="empleado.id">
			<c:forEach items="${empleados}" var="empleado">
				<form:option value="${empleado.id}">
					<c:out value="${empleado.nombre}"></c:out>
				</form:option>
			</c:forEach>
		</form:select>
		<br>
		<form:input type="hidden" path="estado" value="${false}"/>
		<br>
		<form:input type="hidden" path="HorasTrabajadas" value="0" />
		<br>
		<input type="submit" value="Enviar" class="button">
		<br>
	</form:form>
	<a href="../ListaOrdenes">Volver</a>
</body>
</html>