<%-- 
    Document   : Ayuda
    Created on : 26/05/2020, 07:46:55 PM
    Author     : mvarv
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
        <link rel="stylesheet" type="text/css" href="CSS/estilo.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:757px) and (max-width:1500px)" href="CSS/formato.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:500px) and (max-width:767px)" href="CSS/formato3.css"/>
        <title>Business Coffee</title>
    </head>
    <body>
        <div class="inicio2">
            <input id="menu" type="text" value="" onclick="menuC();">
            <img class="iconoInicio" src="img/MenuIcono.png">
            <h1 id="titMenuC">Inicio</h1>
            <div class="inicio">
                <div class="buco">
                    <h1>Business Coffee</h1>
                    <img src="img/Logo.png" id="logo" alt="Logo" width="200px">
                </div>
            </div>
            <h2 id="imp" onclick="importante();">!</h2>
            <ul id="menuNav" class="Menu2 escond">
                <li id="men2"><a href="index.jsp">Inicio</a></li>
                <li id="men2"><a href="Login?pagina=ListarProducto">Productos</a></li>
                <li id="men2"><a href="ElCafe.jsp">El caf&eacute;</a></li>
                <li id="men2"><a href="Beneficios.jsp">Beneficios</a></li>
                <li id="men2"><a href="buco">Acerca de</a></li>
                <li id="men2"><a href="buco">Qui&eacute;nes somos</a></li>
                <li id="men2"><a href="#registrar">Registrarse</a></li>
                <li id="men2"><a href="buco">Ayuda</a></li>
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
            <h1 style="font-weight: bold;">Ayuda</h1>
            <section class="sep row">
                <div class="col s12 m7 l7">
                    <h2 style="font-size: 1.3em;font-weight: bold;">Botones</h2>
                    <p> La mayor&iacute;a de botones son identificados por el color naranja al pasar el puntero sobre estos</p>
                </div>
                <div class="col s12 m5 l5">
                    <img src="ImgAyuda/Boton.jpeg" id="imagP" class="responsive-img materialboxed"/>
                </div>
            </section> 
            <section class="sep row">
                <div class="col s12 m7 l7">
                    <h2 style="font-size: 1.3em;font-weight: bold;">Favoritos</h2>
                    <p>
                        Cuando estemos navegando con el perfil de cliente, 
                        tenemos la posibilidad de agregar a nuestra lista de 
                        favoritos, aquellos productos en los que estemos interesados 
                        en conocer m&aacute;s a detalle
                    </p>
                </div>
                <div class="col s12 m5 l5">
                    <img src="ImgAyuda/Favorito.jpeg" id="imagP" class="responsive-img materialboxed"/>
                </div>
            </section> 
            <section class="sep row">
                <div class="col s12 m7 l7">
                    <h2 style="font-size: 1.3em;font-weight: bold;">Agregar Producto</h2>
                    <p>
                        Cuando navegamos como administradores podemos añadir nuevos productos 
                        los cuales pedir&aacute;n la informaci&aacute;n necesaria 
                        para ser ingresada
                    </p>
                </div>
                <div class="col s12 m5 l5">
                    <img src="ImgAyuda/AgregarP.PNG" id="imagP" class="responsive-img materialboxed"/>
                </div>
            </section> 
            <section class="sep row">
                <div class="col s12 m7 l7">
                    <h2 style="font-size: 1.3em;font-weight: bold;">Eliminar Producto</h2>
                    <p>
                        Cuando navegamos como administradores podemos eliminar productos 
                        que anteriormente han sido ingresados por el administrador
                    </p>
                </div>
                <div class="col s12 m5 l5">
                    <img src="ImgAyuda/EliminarP.PNG" id="imagP" class="responsive-img materialboxed"/>
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
                    <li><a href="#registrar">Registrarse</a></li>
                    <li><a href="Ayuda.jsp">Ayuda</a></li>
                </ul>
            </li>
        </ul>
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