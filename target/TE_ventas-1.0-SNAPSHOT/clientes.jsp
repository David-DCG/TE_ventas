<%
    if (session.getAttribute("logueado") != "OK") {
        response.sendRedirect("login.jsp");
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <title>Punto de Ventas</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/menu.jsp">
            <jsp:param name="opcion" value="clientes"/>
        </jsp:include>
        <div class="container ">
            <h1 class="text-center">Clientes</h1>
            <a class="btn btn-primary btn-sm" href="ClienteControlador?action=add"><i class="bi bi-plus-circle"> Nuevo</i></a>
            <br>
            <br>
            <table class="table table-striped">
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>CORREO</th>
                    <th>CELULAR</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${clientes}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombre}</td>
                        <td>${item.correo}</td>
                        <td>${item.celular}</td>
                        <td><a class="btn btn-warning" href="ClienteControlador?action=edit&id=${item.id}"><i class="bi bi-pencil-square"></i></a></td>
                        <td><a class="btn btn-danger" href="ClienteControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar?'))"><i class="bi bi-trash3"></i></a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>