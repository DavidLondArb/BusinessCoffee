<%-- 
    Document   : Favoritos
    Created on : 26/05/2020, 08:06:42 PM
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
        <link rel="stylesheet" type="text/css" href="CSS/stlProd.css"/>
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
            <h1>Torta de Caf&eacute;</h1>
            <span class="cabecera" style="width: 20%">Elaborado por</span>
            <span class="cabecera2" style="width: 79%">Ejemplo</span>
            <div class="imagenes">
                <div class="row">
                    <div class="col s11 m5 l5 margen"> 
                        <img src="imgProductos/TortaC.jpg" id="imagP" class="responsive-img materialboxed" alt="Cafetal" >
                    </div>
                    <div class="col s11 m6 l6 margen"> 
                        <p>
                            La vida es una combinaci&oacute;n de caf&eacute;, magia y tortas
                        </p>
                    </div>   
                </div>
            </div>
            <div class="infor">
                <h2 style="font-size: 50px;">Ingredientes</h2>
                <div class="row">
                    <div class="col s11 m6 l6 fondo">
                        <ul>
                            <li>1 taza de aceite</li>
                            <li>2 huevos</li>
                            <li>1 cucharada de esencia de vainilla</li>
                            <li>1 taza de leche</li>
                            <li>1 taza de azúcar</li>
                            <li>4 tazas de harina</li>
                        </ul>
                    </div>
                    <div class="col s11 m6 l6 fondo">
                        <ul>
                            <li>1 cucharada de polvo de hornear</li>
                            <li>1 taza de azúcar rubio</li>
                            <li>1 cucharada de canela</li>
                            <li>100 gr de manteca</li>
                            <li>1 cucharada de café instantáneo</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="infor">
                <h2 style="font-size: 50px;">Preparaci&oacute;n</h2>
                <div class="row">
                    <div class="col s11 m11 l11 fondo">
                        <ul>
                            <li>1. En un bowl, mezclar el aceite, los huevos, la esencia de vainilla y la leche</li>
                            <li>2. Agregar el azúcar, la harina, el polvo de hornear y la sal</li>
                            <li>3. Colocar la mitad de la masa en una fuente de horno.</li>
                            <li>4. En otro bowl, mezclar el azúcar rubio con la canela, el café y la manteca</li>
                            <li>5. Colocar la mezcla de café y manteca</li>
                            <li>6. Por último, espolvorear con la mitad de la mezcla sobrante</li>
                            <li>7. Hornear a 180º por 20 minutos</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="comentarios">
                <h2>Comenntarios</h2>
                <textarea class="formInput" name="comentario" rows="30" maxlength="2000">Deja tu comentario</textarea>
                <div class="cajaComent">
                    
                </div>
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
