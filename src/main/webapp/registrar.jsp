<%--
  Created by IntelliJ IDEA.
  User: Gabriela
  Date: 27/01/2022
  Time: 01:30 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Art</title>
</head>
<body>
<form action="AdminArticulos?action=registrar" method="post">
    <table border="1" align="center">
        <tr>
            <td>Código:</td>
            <td><input type="text" name="codigo"/></td>
        </tr>
        <tr>
            <td>Nombre:</td>
            <td><input type="text" name="nombre"/></td>
        </tr>
        <tr>
            <td>Descripción:</td>
            <td><input type="text" name="descripcion"/></td>
        </tr>
        <tr>
            <td>Stock:</td>
            <td><input type="number" name="stock"/></td>
        </tr>
        <tr>
            <td>Precio:</td>
            <td><input type="text" name="precio"/></td>
        </tr>

    </table>
    <br>
    <table border="0" align="center">
        <tr>
            <td><input type="submit" value="Agregar" name="agregar"></td>
        </tr>
    </table>
</form>

</body>
</html>
