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
            <jsp:param name="opcion" value="ventas"/>
        </jsp:include> 
        <div class="container ">
            <h1 class="text-center">Ventas</h1>
            <a class="btn btn-primary btn-sm" href="VentaControlador?action=add"><i class="bi bi-plus-circle"> Nuevo</i></a>
            <br>
            <br>
            <table class="table table-striped">
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>PRODUCTO</th>
                    <th>FECHA</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${ventas}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.cliente}</td>
                        <td>${item.producto}</td>
                        <td>${item.fecha}</td>
                        <td><a class="btn btn-warning" href="VentaControlador?action=edit&id=${item.id}"><i class="bi bi-pencil-square"></i></a></td>
                        <td><a class="btn btn-danger" href="VentaControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar?'))"><i class="bi bi-trash3"></i></a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>