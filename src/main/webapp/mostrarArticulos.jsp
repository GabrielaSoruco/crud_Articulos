<%--
  Created by IntelliJ IDEA.
  User: Gabriela
  Date: 27/01/2022
  Time: 01:48 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Lista Art</title>
</head>
<body>
<h1>Lista  Artículos</h1>
<table>
    <tr>
        <td><a href="AdminArticulos?action=index">Ir al menú</a> </td>
    </tr>
</table>

<table border="1" width="100%">
    <tr>
        <td> ID</td>
        <td> CODIGO</td>
        <td> NOMBRE</td>
        <td>DESCRPICION</td>
        <td>STOCK</td>
        <td>PRECIO</td>
        <td colspan=2>ACCIONES</td>
    </tr>
    <c:forEach var="articulo" items="${listaArticulos}">
        <tr>
            <td><c:out value="${articulo.id}"/></td>
            <td><c:out value="${articulo.codigo}"/></td>
            <td><c:out value="${articulo.nombre}"/></td>
            <td><c:out value="${articulo.descripcion}"/></td>
            <td><c:out value="${articulo.stock}"/></td>
            <td><c:out value="${articulo.precio}"/></td>
            <td><a href="AdminArticulos?action=showEditar&id=<c:out value="${articulo.id}" />">Editar</a></td>
            <td><a href="AdminArticulos?action=eliminar&id=<c:out value="${articulo.id}"/>">Eliminar</a> </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
