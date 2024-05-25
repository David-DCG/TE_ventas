<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <title>Punto de Venta</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/menu.jsp">
            <jsp:param name="opcion" value="ventas" />
        </jsp:include>
        <div class="container ">
            <h1 class="text-center">Formulario de Ventas</h1>
            <br>
            <div class="container col-4">
                <div class="card">
                    <div class="card-header">
                        Ventas
                    </div>
                    <div class="card-body">
                        <form action="VentaControlador" method="post">
                            <input type="hidden" name="id" value="${venta.id}">
                            <div class="mb-3">
                                <label for="cliente" class="form-label">Cliente:</label>
                                <select name="cliente_id" class="form-control">
                                    <option value="">-- Seleccione --</option>
                                    <c:forEach var="item" items="${lista_clientes}">
                                        <option value="${item.id}" <c:if test="${venta.cliente_id == item.id}">selected</c:if>>${item.nombre}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="producto" class="form-label">Producto:</label>
                                <select name="producto_id" class="form-control">
                                    <option value="">-- Seleccione --</option>
                                    <c:forEach var="item" items="${lista_productos}">
                                        <option value="${item.id}" <c:if test="${venta.producto_id == item.id}">selected</c:if>>${item.nombre}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="fecha" class="form-label">Fecha:</label>
                                <input type="date" name="fecha" id="fecha" value="${venta.fecha}" class="form-control"placeholder="Escriba el costo">
                            </div>
                            <button type="submit" class="btn btn-success"><i class="bi bi-floppy"> Enviar</i></button>
                            <a href="VentaControlador" class="btn btn-info"><i class="bi bi-arrow-return-left"> Volver</i></a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
