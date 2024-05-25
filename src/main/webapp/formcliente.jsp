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
            <jsp:param name="opcion" value="clientes" />
        </jsp:include>
        <div class="container ">
            <h1 class="text-center">Formulario de Clientes</h1>
            <br>
            <div class="container col-4">
                <div class="card">
                    <div class="card-header">
                        Clientes
                    </div>
                    <div class="card-body">
                        <form action="ClienteControlador" method="post">
                            <input type="hidden" name="id" value="${cliente.id}">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Nombre:</label>
                                <input type="text" name="nombre" id="nombre" value="${cliente.nombre}" class="form-control" placeholder="Escriba su nombre">
                            </div>
                            <div class="mb-3">
                                <label for="correo" class="form-label">Correo:</label>
                                <input type="email" name="correo" id="correo" value="${cliente.correo}" class="form-control" placeholder="ejemplo@mail.com">
                            </div>
                            <div class="mb-3">
                                <label for="celular" class="form-label">Celular:</label>
                                <input type="text" name="celular" id="celular" value="${cliente.celular}" class="form-control"placeholder="Escriba su Nro Celular">
                            </div>
                            <button type="submit" class="btn btn-success"><i class="bi bi-floppy"> Enviar</i></button>
                            <a href="ClienteControlador" class="btn btn-info"><i class="bi bi-arrow-return-left"> Volver</i></a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
