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
        <link rel="stylesheet" type="text/css" href="CSS/estilo.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/stlProd.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:777px) and (max-width:2500px)" href="CSS/formato.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:100px) and (max-width:777px)" href="CSS/formato3.css"/>
        <title>Business Coffee</title>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession(false);
            String nombre = (String) sesion.getAttribute("nombre");
            OperacionesClienteBD infoCl= (OperacionesClienteBD) sesion.getAttribute("infoCliente");
            if (nombre == null) {
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
             <c:forEach var="dato" items="${listaProductoE}">
                <h1>${dato.getNombreProducto()}</h1>
                <span class="cabecera" style="width: 20%">Elaborado por</span>
                <span class="cabecera2" style="width: 79%">${dato.getNombreadmin()}</span>
                <div class="imagenes">
                    <div class="row">
                        <div class="col s12 m5 l5 margen"> 
                            <img src="imgProductos/${dato.getImg()}" id="imagP" class="responsive-img materialboxed">
                        </div>
                        <div class="col s12 m6 l6 margen"> 
                            <p>${dato.getDescProducto()}</p>
                        </div>   
                    </div>
                </div>
                <div class="infor">
                    <h2 style="font-size: 50px;">Ingredientes</h2>
                    <div class="row fondo">
                        <ul>
                            <c:forEach var="ingre" items="${listaIngredientes}">
                                <li>${ingre.getCantidadIngre()} - ${ingre.getNombreIngre()}</li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="infor">
                    <h2 style="font-size: 50px;">Preparaci&oacute;n</h2>
                    <div class="row">
                        <div class="col s12 m12 l12 fondo">${dato.getProcedimiento()}</div>
                    </div>
                </div>
                <div class="infor">
                    <h2 style="font-size: 50px;">Observaciones</h2>
                    <div class="row">
                        <div class="col s12 m12 l12 fondo">${dato.getObservaciones()}</div>
                    </div>
                </div>
                <h2 style="font-size:30px;">Url del video: ${dato.getUrlProducto()}</h2>
                <div class="comentarios">
                    <h2>Comentarios</h2>
                    <form method="post" action="Login" onsubmit="return verificar();">
                        <textarea class="formInput" name="comentario" rows="30" maxlength="2000">Deja tu comentario</textarea>
                        <input type="submit" class="btnComen" value="Enviar"/>
                        <input type="hidden" name="codigoCl" value="<%=infoCl.getCodigoClient()%>"/>
                        <input type="hidden" name="codigoPro" value="${dato.getCodigoproducto()}"/>
                        <input type="hidden" name="pagina" value="ComentProductoCl"/>
                    </form>
                    <div class="cajaComent admin">
                        <h2>Administradores</h2>
                        <c:forEach var="comentAd" items="${listaComentAd}">
                            <p style="color: red">${comentAd.getNombreAdmin()} ${comentAd.getApellidoAdmin()}- ${comentAd.getFechaComent()}</p>
                            <p style="margin-left: 10px;">${comentAd.getComentario()}</p>
                        </c:forEach>
                    </div>
                    <div class="cajaComent client">
                        <h2>Clientes</h2>
                        <c:forEach var="comentCl" items="${listaComentCl}">
                            <p style="color: red">${comentCl.getNombreCliente()} ${comentCl.getApellidoCliente()}- ${comentCl.getFechaComent()}</p>
                            <p style="margin-left: 10px;">${comentCl.getComentario()}</p>
                        </c:forEach>
                    </div>
                </div>
            </c:forEach>
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
