<%-- 
    Document   : Formato
    Created on : 14/05/2020, 02:10:56 PM
    Author     : mvarv
--%>
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
            ImgProductoDao imdDao= new ImgProductoDao();
        %>
        <div class="inicio2">
            <input id="menu" type="text" value="" onclick="menuC();">
            <img class="iconoInicio" src="img/MenuIcono.png">
            <h1 id="titMenuC">Formato</h1>
            <h2 id="imp" onclick="importante();">!</h2>
            <ul id="menuNav" class="Menu2 escond">
                <li id="men2"><a href="index.jsp">Inicio</a></li>
                <li id="men2"><a href="Login?pagina=ListarProducto">Productos</a></li>
                <li id="men2"><a href="ElCafe.jsp">El caf&eacute;</a></li>
                <li id="men2"><a href="Beneficios.jsp">Beneficios</a></li>
                <li id="men2"><a href="buco">Acerca de</a></li>
                <li id="men2"><a href="buco">Qui&eacute;nes somos</a></li>
                <li id="men2"><a href="#registrar">Registrarse</a></li>
                <li id="men2"><a href="Ayuda.jsp">Ayuda</a></li>
                <li id="men2"><a href="IniciarSesion.jsp">Iniciar sesi&oacute;n</a></li>
            </ul>
        </div>
        <div class="inicio">
            <div class="buco">
                <h1>Business Coffee</h1>
                <img src="img/Logo.png" id="logo" alt="Logo" width="200px">
            </div>
        </div>
        <ul class="Menu">
            <li id="men"><a href="index.jsp">Inicio</a></li>
            <li id="men"><a href="Login?pagina=ListarProducto">Productos</a></li>
            <li id="men"><a href="ElCafe.jsp">El caf&eacute;</a></li>
            <li id="men"><a href="Beneficios.jsp">Beneficios</a></li>
            <li id="men"><a href="IniSesion.jsp">Iniciar sesi&oacute;n</a></li>
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
                            <p style="font-size: 23px !important">${dato.getDescProducto()}</p>
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
        <aside id="registrar" class="elegirReg">
            <div class="contentido">
                <header>
                    <a href="#" class="cerrar">Cerrar</a>
                    <h2>Selecciona el prefil a crear</h2>
                </header>
                <a href="RegistroCliente.jsp" id="cuentas">Cliente</a>
                <a href="RegistroAdmin.jsp" id="cuentas">Administrador</a>
            </div>
        </aside>
        <ul class="ajuste">
            <li><a><img src="img/Ajust.png" width="50px"></a>
                <ul class="submenu">
                    <li><a href="#footer">Acerca de</a></li>
                    <li><a href="#buco">Qui&eacute;nes somos</a></li>
                    <li><a href="#registrar">Registrarse</a></li>
                    <li><a href="Ayuda.jsp">Ayuda</a></li>
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
