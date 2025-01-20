<%-- 
    Document   : index
    Created on : 30/03/2020, 09:45:33 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="img/Logo.png"/>
        <link rel="stylesheet" href="materialize/css/materialize.min.css">
        <link rel="stylesheet" type="text/css" href="materialize/css/materialize.css">
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:777px) and (max-width:2500px)" href="CSS/formato.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:100px) and (max-width:777px)" href="CSS/formato3.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/estilo.css"/>
        <title>Parqueadero</title>
    </head>
    <body>
        <div class="inicio2">
            <input id="menu" type="text" value="" onclick="menuC();">
            <img class="iconoInicio" src="img/MenuIcono.png">
            <h1 id="titMenuC">Inicio</h1>
            <h2 id="imp" onclick="importante();">!</h2>
            <ul id="menuNav" class="Menu2 escond">
                <li id="men2"><a href="index.jsp">Inicio</a></li>
                <li id="men2"><a href="Login?pagina=ListarProducto">Productos</a></li>
                <li id="men2"><a href="ElCafe.jsp">El caf&eacute;</a></li>
                <li id="men2"><a href="Beneficios.jsp">Beneficios</a></li>
                <li id="men2"><a href="buco">Acerca de</a></li>
                <li id="men2"><a href="buco">Qui&eacute;nes somos</a></li>
                <li id="men2"><a href="Ayuda.jsp">Ayuda</a></li>
                <li id="men2"><a href="#registrar">Registrarse</a></li>
                <li id="men"><a href="IniSesion.jsp">Iniciar sesi&oacute;n</a></li>
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
            <li id="men"><a href="IniSesion.jsp" name="menuIniS">Iniciar sesi&oacute;n</a></li>
        </ul>
        <br>
        <div class="contenedor">
            <section class="sep">
                <div class="row">
                    <div class="col s11 m5 l5 margen"> 
                        <img src="img/Cafetal.jpg" id="imagP" class="responsive-img materialboxed" alt="Cafetal" >
                    </div>
                    <div class="col s11 m6 l6 margen"> 
                        <h1 id="tit">¿Sab&iacute;as que...?</h1>

                        <p id="textimg">
                            El caf&eacute; es un producto de mucha demanda y 
                            todo esto gracias a que este tiene caracter&iacute;sticas incre&iacute;bles, 
                            aparte de proveer unos sabores tan inigualables tambi&eacute;n sirve 
                            para mejorar la salud, adem&aacute;s podemos crear maravillosas 
                            combinaciones las cuales nos pueden despertar sensaciones 
                            incre&iacute;bles y lo mejor es que los puedes realizar tu mismo. Ahora contin&uacute;a
                            en este camino acompañado por <strong>Business Coffe</strong> y su personal.
                        </p>
                    </div>   
                </div>

                <div class="si">
                    <div class="cuad1">
                        <p><strong>Genera</strong></p>
                    </div>
                    <div class="cuad2">
                        <p><strong>Ampl&iacute;a</strong></p>
                    </div>
                    <div class="cuad3">
                        <p><strong>Mejora</strong></p>
                    </div>
                </div>
            </section>
            <section class="sep">
                <div class="row">
                    <h1>Productos destacados</h1>
                    <div class="col s12 m6 l6">
                        <div class="material-placeholder">
                            <img src="imgProductos/Cafe.png" class="responsive-img materialboxed" style="width: 394px;height: 250px;">
                            <h3 class="descripcion">Producto</h3>
                        </div>
                    </div>
                    <div class="col s12 m6 l6">
                        <div class="material-placeholder">
                            <img src="imgProductos/Cafe.png" class="responsive-img materialboxed" style="width: 394px;height: 250px;">
                            <h3 class="descripcion">Producto</h3>
                        </div>
                    </div>
                    <div class="col s12 m6 l6">
                        <div class="material-placeholder">
                            <img src="imgProductos/Cafe.png" class="responsive-img materialboxed" style="width: 394px;height: 250px;">
                            <h3 class="descripcion">Producto</h3>
                        </div>
                    </div>
                    <div class="col s12 m6 l6">
                        <div class="material-placeholder">
                            <img src="imgProductos/Cafe.png" class="responsive-img materialboxed" style="width: 394px;height: 250px;">
                            <h3 class="descripcion">Producto</h3>
                        </div>
                    </div>
                </div>
            </section>
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
                    <!--<li><a href="#registrar">Registrarse</a></li>-->
                    <li><a href="RegistroCliente.jsp">Registro Cliente</a></li>
                    <li><a href="RegistroAdmin.jsp">Registro Administrador</a></li>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </body>
</html>
