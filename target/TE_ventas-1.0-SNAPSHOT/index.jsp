<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <title>Ventas</title>
    </head>
    <body>
        <div class="container ">
            <h1 class="text-center">Punto de Venta</h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="productos" />
            </jsp:include>
            <a class="btn btn-primary btn-sm" href="#"><i class="bi bi-plus-circle"> Nuevo</i></a>
            <table class="table table-striped">
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>DESCRIPCION</th>
                    <th>PRECIO</th>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Tablet</td>
                    <td>Nuevo de paquete</td>
                    <td>100</td>
                    <td><a class="btn btn-warning" href="#"><i class="bi bi-pencil-square"></i></a></td>
                    <td><a class="btn btn-danger" href="#"><i class="bi bi-trash3"></i></a></td>
                </tr>
            </table>
        </div>
    </body>
</html>
