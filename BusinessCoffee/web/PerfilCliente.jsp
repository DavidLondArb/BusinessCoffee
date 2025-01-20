<%-- 
    Document   : Favoritos
    Created on : 26/05/2020, 08:06:42 PM
    Author     : mvarv
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="Clases.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="img/Logo.png"/>
        <link rel="stylesheet" href="materialize/css/materialize.min.css">
        <link rel="stylesheet" type="text/css" href="materialize/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="CSS/estilo.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/stilPerfil.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:777px) and (max-width:2500px)" href="CSS/formato.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:100px) and (max-width:777px)" href="CSS/formato3.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>Business Coffee</title>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession(false);
            String nombre = (String) sesion.getAttribute("nombre");
            OperacionesClienteBD infoCl= (OperacionesClienteBD) sesion.getAttribute("infoCliente");
            OperacionesFav opFav= new OperacionesFav();
            List<OperacionesFav>listaFavoritos= new ArrayList<OperacionesFav>();
            listaFavoritos=opFav.listarTodosFavoritos(infoCl.getCodigoClient());
            if (nombre == null || infoCl==null) {
                response.sendRedirect("IniSesion.jsp");
            }
        %>
        <div class="inicio2">
            <input id="menu" type="text" value="" onclick="menuC();">
            <img class="iconoInicio" src="img/MenuIcono.png">
            <h1 id="titMenuC">Inicio</h1>
            <h2 id="imp" onclick="importante();">!</h2>
            <ul id="menuNav" class="Menu2 escond">
                <li id="men2"><a href="PerfilCliente.jsp"><%= nombre%></a></li>
                <li id="men2"><a href="inicioCliente.jsp">Inicio</a></li>
                <li id="men2"><a href="Login?pagina=ListarProductoC">Productos</a></li>
                <li id="men2"><a href="ElCafeCliente.jsp">El caf&eacute;</a></li>
                <li id="men2"><a href="BeneficiosCliente.jsp">Beneficios</a></li>
                <li id="men2"><a href="buco">Acerca de</a></li>
                <li id="men2"><a href="buco">Qui&eacute;nes somos</a></li>
                <li id="men2"><a href="AyudaCliente.jsp">Ayuda</a></li>
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
            <li id="men"><a href="InicioCliente.jsp">Inicio</a></li>
            <li id="men"><a href="Login?pagina=ListarProductoC">Productos</a></li>
            <li id="men"><a href="ElCafeCliente.jsp">El caf&eacute;</a></li>
            <li id="men"><a href="BeneficiosCliente.jsp">Beneficios</a></li>
            <li id="men"><a href="PerfilCliente.jsp"><%= nombre%></a></li>
        </ul>
        <br>
        <div class="contenedor">
            <h1>Bienvenido <%= nombre%></h1>
            <div>
                <span class="cabecera">Identificación</span>
                <span class="cabecera">Apellido</span>
                <span class="cabecera2"><%=infoCl.getCedulaClient()%></span>
                <span class="cabecera2"><%=infoCl.getApellidoClient()%></span>
                <span class="cabecera" style="width: 100%;">Correo</span>
                <span class="cabecera2" name="compCorrCl" style="width: 100%;"><%=infoCl.getEmailClient()%></span>
            </div>
            <h2 style="font-size: 40px;margin-top: 20px;" align="center">Favoritos</h2>
            <div class="row">
                <%
                if (!listaFavoritos.isEmpty()) {
                    for(OperacionesFav c: listaFavoritos){
                %>
                        <div class="col s12 m6 l6">
                            <div class="material-placeholder"><a class="agregFav" href="Login?pagina=EliminarFavorito2&prod=<%=c.getProducto()%>&clien=<%=c.getCliente()%>"><i id="icon<%=c.getProducto()%>" class="material-icons n1" >check_circle</i></a><a href="Login?pagina=MostrPCliente&codigoP=<%=c.getProducto()%>">
                                    <img src="imgProductos/<%=c.getImgProd()%>" class="responsive-img materialboxed" style="width: 394px;max-height: 250px;position: relative;left: 50%;transform: translateX(-50%)">
                                    <h3 class="descripcion"><%=c.getNombreProd()%></h3></a>
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
                    <li><a href="AyudaCliente.jsp">Ayuda</a></li>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </body>
</html>
