<%
    String opcion = request.getParameter("opcion");
%>
<header>
    <nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
        <div class="container-lg">
            <a class="navbar-brand" href="#">Punto de Venta</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarColor02">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link <%=(opcion.equals("clientes") ? "active" : "")%>" href="ClienteControlador">Cliente
                            <span class="visually-hidden">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%=(opcion.equals("productos") ? "active" : "")%>" href="ProductoControlador">Producto</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%=(opcion.equals("ventas") ? "active" : "")%>" href="VentaControlador">Venta</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%=(opcion.equals("usuarios") ? "active" : "")%> "href="UsuarioControlador">Usuario</a>
                    </li>
                </ul>
                <a href="LoginControlador?action=logout" class="btn btn-secondary my-2 my-sm-0">Cerrar Sesion</a>
            </div>
        </div>
    </nav>
</header>