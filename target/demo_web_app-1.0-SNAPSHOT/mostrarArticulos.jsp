<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/6a95bc84be.js" crossorigin="anonymous"></script>
    <title>Libreria "San Borges"</title>
</head>

<body>
    <div class="container mt-3">
        <div class="table-title">
            <div class="row d-flex justify-content-between">
                <div class="col-md-9">
                    <nav class="navbar navbar-light bg-light">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="AdminArticulos?action=index">
                                <h2>Libreria San Borges</h2>
                            </a>
                        </div>
                    </nav>
                </div>
                <div class="col-md-3 mt-2"><a href="prueba.html" class="btn btn-outline-success"><i
                            class="fas fa-plus-circle"></i>
                        Añadir</a>
                </div>
            </div>
        </div>
        <table class="table table-borderless table-striped table-hover mt-2">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Codigo</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Descripcion</th>
                    <th scope="col">Stock</th>
                    <th scope="col">Precio</th>
                    <th colspan="2">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="articulo" items="${listaArticulos}">
                    <tr>
                        <td>
                            <c:out value="${articulo.id}" />
                        </td>
                        <td>
                            <c:out value="${articulo.codigo}" />
                        </td>
                        <td>
                            <c:out value="${articulo.nombre}" />
                        </td>
                        <td>
                            <c:out value="${articulo.descripcion}" />
                        </td>
                        <td>
                            <c:out value="${articulo.stock}" />
                        </td>
                        <td>
                            <c:out value="${articulo.precio}" />
                        </td>
                        <td><a href='AdminArticulos?action=showEditar&id=<c:out value="${articulo.id}"/>'><span
                                    title="editar"><i class="fas fa-user-edit"></i></span></a></td>
                        <td><a href='AdminArticulos?action=eliminar&id=<c:out value="${articulo.id}"/>'><span
                                    title="borrar"><i class="fas fa-trash-alt"></i></span></a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
</body>

</html>