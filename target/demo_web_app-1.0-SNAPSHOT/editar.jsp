<%--
  Created by IntelliJ IDEA.
  User: Gabriela
  Date: 27/01/2022
  Time: 07:26 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Actualizar Artículo</h1>
<form action="AdminArticulos?action=editar" method="post" >
    <table>
        <tr>
            <td><label>Id</label></td>
            <td><input type="text" name="id" value='<c:out value="${articulo.id}"></c:out>'></td>
        </tr>
        <tr>
            <td><label>Código</label></td>
            <td><input type="text" name="codigo" value='<c:out value="${articulo.codigo}"></c:out>' ></td>
        </tr>
        <tr>
            <td><label>Nombre</label></td>
            <td><input type="text" name="nombre" value='<c:out value="${articulo.nombre}"></c:out>' ></td>
        </tr>
        <tr>
            <td><label>Descripción</label></td>
            <td><input type="text" name="descripcion" value='<c:out value="${articulo.descripcion}"></c:out>' ></td>
        </tr>
        <tr>
            <td><label>Existencia</label></td>
            <td><input type="text" name="stock" value='<c:out value="${articulo.stock }"></c:out>' ></td>
        </tr>

        <tr>
            <td><label>Precio</label></td>
            <td><input type="text" name="precio" value='<c:out value="${articulo.precio }"></c:out>' ></td>
        </tr>
    </table>

    <input type="submit" name="registrar" value="Guardar">
</form>

</body>
</html>
