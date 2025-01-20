<%-- 
    Document   : ElCafeAdmin
    Created on : 26/05/2020, 06:10:35 PM
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
        <link rel="stylesheet" type="text/css" href="CSS/stilCafe.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:777px) and (max-width:2500px)" href="CSS/formato.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:100px) and (max-width:777px)" href="CSS/formato3.css"/>
        <title>Business Coffee</title>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession(false);
            String nombre = (String) sesion.getAttribute("nombre");
            System.out.println("name " + nombre);
            if (nombre == null) {
                response.sendRedirect("IniSesion.jsp");
            }
        %>
        <div class="inicio2">
            <input id="menu" type="text" value="" onclick="menuC();">
            <img class="iconoInicio" src="img/MenuIcono.png">
            <h1 id="titMenuC">Formato</h1>
            <h2 id="imp" onclick="importante();">!</h2>
            <ul id="menuNav" class="Menu2 escond">
                <li id="men2"><a href="PerfilAdmin.jsp"><%= nombre%></a></li>
                <li id="men2"><a href="inicioAdmin.jsp">Inicio</a></li>
                <li id="men2"><a href="Login?pagina=ListarProductoA">Productos</a></li>
                <li id="men2"><a href="ElCafeAdmin.jsp">El caf&eacute;</a></li>
                <li id="men2"><a href="BeneficiosAdmin.jsp">Beneficios</a></li>
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
            <li id="men"><a href="PerfilAdmin.jsp"><%= nombre%></a></li>
        </ul>
        <br>
        <div class="contenedor">
            <h1 id="tit">Tipos de café</h1>
            <section class="sep row">
                <div class="col s12">
                    <h2>Café con leche</h2>
                </div>
                <div class="col s12 m5 l5">
                    <img src="img/cafe con leche.jpg" id="imagP" class="responsive-img materialboxed" alt="cafe con leche" width="350px"/>
                </div>
                <div class="col s12 m7 l7">
                    <p id="textimg">
                        Semejante al cortado, el café con leche supone la incorporación 
                        de leche al café, solo que en esta ocasión se utiliza una proporción igual o 
                        semejante del lácteo y el café. Tiene un sabor más dulce y mucho menos intenso, 
                        pero sigue siendo potente a nivel de presencia de cafeína.
                    </p>
                </div>
            </section>
            <section class="sep row">
                <div class="col s12">
                    <h2>Café americano</h2>
                </div>
                <div class="col s12 m5 l5">
                    <img src="img/Café-americano.jpg" id="imagP" class="responsive-img materialboxed" alt="cafe americano" width="350px"/>
                </div>
                <div class="col s12 m7 l7">
                    <p id="textimg">
                        El café americano es un tipo de café derivado del espresso el cual se 
                        caracteriza por añadir una cantidad de agua mucho mayor de lo habitual en este tipo 
                        de preparación, teniendo como resultado un producto con un sabor menos potente y
                        algo más aguado, algo que lo hace menos amargo y facilita un sabor dulce. En este 
                        caso se realizaría primero un espresso y a este se le añadiría externamente agua 
                        hirviendo.
                    </p>
                </div>
            </section>
            <section class="sep row">
                <div class="col s12">
                    <h2>Café mocca</h2>
                </div>
                <div class="col s12 m5 l5">
                    <img src="img/cafe mocca.jpg" id="imagP" class="responsive-img materialboxed" alt="café mocca" width="350px"/>
                </div>
                <div class="col s12 m7 l7">
                    <p id="textimg">
                        Se trata de una variante del café con leche en el que además de leche y 
                        café se emplea obligatoriamente chocolate o cacao en forma de sirope o polvo.
                    </p>
                </div>
            </section>  
            <section class="sep row">
                <div class="col s12">
                    <h2>Café bombón</h2>
                </div>
                <div class="col s12 m5 l5">
                    <img src="img/cafe-bombon.jpg"  id="imagP" class="responsive-img materialboxed" alt="cafe bombon" width="350px"/>
                </div>
                <div class="col s12 m7 l7">
                    <p id="textimg">
                        Una versión mucho más endulzada del café con leche es la variante conocida
                        café bombón, en el que se sustituye la leche normal por la leche condensada. Lo habitual
                        es que se ponga primero ésta para luego agregar el café.
                    </p>
                </div>
            </section>  
            <section class="sep row">
                <div class="col s12">
                    <h2>Café capuchino</h2>
                </div>
                <div class="col s12 m5 l5">
                    <img src="img/cafe-capuchino.jpg" id="imagP" class="responsive-img materialboxed" alt="cafe capuchino" width="350px"/>
                </div>
                <div class="col s12 m7 l7">
                    <p id="textimg">
                        El capuchino es otro de los cafés más habituales, siendo semejante al café con 
                        leche con la excepción de que en este caso solo encontraremos alrededor de un tercio de café, 
                        siendo el resto leche. Por lo general gran parte de esta es espumada, y suele añadírsele de
                        forma espolvoreada algo de cacao en polvo para darle un sabor más dulce.
                    </p>
                </div>
            </section>  
            <section class="sep row">
                <div class="col s12">
                    <h2>Café expresso</h2>
                </div>
                <div class="col s12 m5 l5">
                    <img src="img/cafe-espresso.jpg" id="imagP" class="responsive-img materialboxed" alt="cafe expresso" width="350px"/>
                </div>
                <div class="col s12 m7 l7">
                    <p id="textimg">
                        Uno de los tipos de café más básicos y sencillos, únicamente consta de un infusión
                        de café la cual se realiza hirviendo agua en contacto con el grano. Se puede preparar en pocos 
                        segundos. Se trata de un tipo de café corto, y su tamaño suele ser de alrededor de 30 cl.
                        Es habitual el uso de café de la variante arábiga. Habitualmente suele tener algo de espuma por encima.
                    </p>
                </div>
            </section>  
            <section class="sep row">
                <div class="col s12">
                    <h2>Café frappé</h2>
                </div>
                <div class="col s12 m5 l5">
                    <img src="img/cafe-frappe.jpg" id="imagP" class="responsive-img materialboxed" alt="cafe frappe" width="350px"/>
                </div>
                <div class="col s12 m7 l7">
                    <p id="textimg">
                        Una de las pocas variantes cuya conceptualización es directamente como café frío, 
                        el frappé se elabora con café instantáneo molido, hielo y crema de leche o nata.
                    </p>
                </div>
            </section>  
            <section class="sep row">
                <div class="col s12">
                    <h2>Café carajillo</h2>
                </div>
                <div class="col s12 m5 l5">
                    <img src="img/carajillo.jpg" id="imagP" class="responsive-img materialboxed" alt="cafe carajillo" width="350px"/>
                </div>
                <div class="col s12 m7 l7">
                    <p id="textimg">
                        El carajillo es un café preparado como un espresso al cual se le añade además de la 
                        infusión una cierta cantidad de alguna bebida espirituosa, siendo lo más general el brandy, 
                        el orujo o el whisky. Para ello generalmente primero se hecha el licor previamente calentado, 
                        al cual se le añadirá el café y posteriormente se le pueden agregar otros elementos como azúcar.
                        Si se emplea brandy junto con ralladura de limón, pasamos a tener el llamado café brulé.
                    </p>
                </div>
            </section>  
            <section class="sep row">
                <div class="col s12">
                    <h2>Café macchiato</h2>
                </div>
                <div class="col s12 m5 l5">
                    <img src="img/macchiato.jpg" id="imagP" class="responsive-img materialboxed" alt="cafe macchiato" width="350px"/>
                </div>
                <div class="col s12 m7 l7">
                    <p id="textimg">
                        Uno de los más demandados por lo general, llamamos cortado o macchiato a un tipo de
                        café espresso a la cual se le agrega una ligera cantidad de leche, que manche o tiña el café.
                    </p>
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
