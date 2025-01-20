<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Clases.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="img/Logo.png"/>
        <link rel="stylesheet" href="materialize/css/materialize.min.css">
        <link rel="stylesheet" type="text/css" href="materialize/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="CSS/stilProducto.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:777px) and (max-width:2500px)" href="CSS/formato.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:100px) and (max-width:777px)" href="CSS/formato3.css"/>
        <title>Business Coffee</title>
    <body>
        <%
            HttpSession sesion = request.getSession(false);
            String nombre = (String) sesion.getAttribute("nombre");
            System.out.println("name " + nombre);
            if (nombre == null) {
                response.sendRedirect("IniSesion.jsp");
            }
            ImgProductoDao daoImg= new ImgProductoDao();
            MostrarProductos p= new MostrarProductos();
            List<MostrarProductos>lista= daoImg.listarProducto();
        %>
        <div class="inicio2">
            <input id="menu" type="text" value="" onclick="menuC();">
            <img class="iconoInicio" src="img/MenuIcono.png">
            <h1 id="titMenuC">Productos</h1>
            <div class="inicio">
                <div class="buco">
                    <h1>Business Coffee</h1>
                    <img src="img/Logo.png" id="logo" alt="Logo" width="200px">
                </div>
            </div>
            <h2 id="imp" onclick="importante();">!</h2>
            <ul id="menuNav" class="Menu2 escond">
                <li id="men2"><a href="PerfilAdmin.jsp"><%= nombre%></a></li>
                <li id="men2"><a href="inicioAdmin.jsp">Inicio</a></li>
                <li id="men2"><a href="Login?pagina=ListarProductoA">Productos</a></li>
                
                <li id="men2"><a href="ElCafeAdmin.jsp">El caf&eacute;</a></li>
                <li id="men2"><a href="Beneficios.jsp">Beneficios</a></li>
                <li id="men2"><a href="buco">Acerca de</a></li>
                <li id="men2"><a href="buco">Qui&eacute;nes somos</a></li>
                <li id="men2"><a href="AyudaAdmin.jsp">Ayuda</a></li>
                <li id="men2"><a href="IniSesion.jsp?cerrar=true">Cerrar sesi&oacute;n</a></li>
                    <%
                        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                        response.setHeader("Pragma", "no-cache");
                        response.setDateHeader("Expires", 0);
                        if (request.getParameter("cerrar") != null) {
                            session.removeAttribute("nombre");
                            session.invalidate();
                        }
                    %>
            </ul>
        </div>
        <div class="inicio">
            <div class="buco">
                <h1>Business Coffee</h1>
                <img src="img/Logo.png" id="logo" alt="Logo" width="200px">
            </div>
        </div>
        <ul class="Menu">
            <li id="men"><a href="InicioAdmin.jsp">Inicio</a></li>
            <li id="men"><a href="Login?pagina=ListarProductoA">Productos</a></li>
            <li id="men"><a href="ElCafeAdmin.jsp">El caf&eacute;</a></li>
            <li id="men"><a href="BeneficiosAdmin.jsp">Beneficios</a></li>
            <li id="men"><a href="PerfilAdmin.jsp" nombre="admon"><%= nombre%></a></li>
        </ul>
        <br>
        <div class="contenedor">
            <h1>Productos</h1>
            <div class="row">
            <%
                if (!lista.isEmpty()) {
                    for(MostrarProductos c: lista){
            %>
                    <div class="col s12 m6 l6">
                        <div class="material-placeholder"><a href="Login?pagina=MostrPAdmin&codigoP=<%=c.getCodigoproducto()%>">
                                <img src="imgProductos/<%=c.getImg()%>" class="responsive-img materialboxed" style="width: 394px;max-height: 250px;position: relative;left: 50%;transform: translateX(-50%)">
                                <h3 class="descripcion"><%=c.getNombreProducto()%></h3></a>
                        </div>
                    </div>
            <%
                    }
                }
            %>
            </div>
        </div>
        <div id="importa" class="new escond2">
            <h2>Importante</h2>
            <section class="importante">
                <div class="importa imp1">
                    <a href="https://federaciondecafeteros.org/">
                        <img src="img/FedeCafet.png">
                        <h2>Federaci&oacute;n Nacional de Cafeteros</h2>
                    </a>
                </div>
                <div class="importa imp1">
                    <a href="http://www.ico.org/es/new_historical_c.asp">
                        <img src="https://66.media.tumblr.com/ab9c428ae35512d5a4642e318cdda84c/tumblr_pfvjn9skDO1r2e7m2o1_1280.png">
                        <h2>Organización Internacional del café (OIC)</h2>
                    </a>
                </div>
            </section>
        </div>
        <ul class="ajuste">
            <li><a><img src="img/Ajust.png" width="50px"></a>
                <ul class="submenu">
                    <li><a href="#footer">Acerca de</a></li>
                    <li><a href="#buco">Qui&eacute;nes somos</a></li>
                    <li><a href="AyudaAdmin.jsp">Ayuda</a></li>
                    <li><a href="IniSesion.jsp?cerrar=true">Cerrar sesi&oacute;n</a></li>
                        <%
                            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                            response.setHeader("Pragma", "no-cache");
                            response.setDateHeader("Expires", 0);
                            if (request.getParameter("cerrar") != null) {
                                session.removeAttribute("nombre");
                                session.invalidate();
                            }

                        %>
                </ul>
            </li>
        </ul>
        <footer>
            <h2><strong>Business Coffee</strong></h2>
            <h5>La mejor solución para ampliar tu conocimiento</h5>
            <h5>Coffeebusiness4@gmail.com</h5>
        </footer>
        <div class="foot">
            <h2><strong>Business Coffee</strong></h2>
        </div>
        <script src="JS/javascript.js"></script>
    </body>
</html>

