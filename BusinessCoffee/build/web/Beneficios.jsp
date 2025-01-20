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
        <link rel="stylesheet" type="text/css" href="CSS/stilBeneficio.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:777px) and (max-width:2500px)" href="CSS/formato.css"/>
        <link rel="stylesheet" type="text/css" media="only screen and (min-width:100px) and (max-width:777px)" href="CSS/formato3.css"/>
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
                <li id="men2"><a href="Benedicios.jsp">Beneficios</a></li>
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
            <div>
                <h1 id="Beneficio">Beneficios del café</h1>
                <br>
                <section class="sep row">
                    <div class="col s12 m7 l7">
                        <h2 style="font-size: 1.2em">1. Contiene nutrientes esenciales</h2>
                        <p> Una taza contiene vitaminas B2 y B5, 
                            magnesio, potasio y niacina. Y además, 
                            es la mayor fuente de antioxidantes, 
                            más que la fruta o los vegetales.</p>
                    </div>
                    <div class="col s12 m5 l5">
                        <img src="img/Cafe1.jpeg" id="imagP" class="responsive-img materialboxed"/>
                    </div>
                </section> 
                <br>
                <section class="sep row">
                    <div class="col s12 m7 l7">
                        <h2 style="font-size: 1.2em">2. Mejora aspectos de la función cerebral</h2>
                        <p> 
                            Varios estudios apunta a que el café mejora determinadas funciones cognitivas. 
                            La cafeína de esta bebida bloquea la adenosina y hace que aumenten la dopamina y 
                            la norepinefrina acelerando las funciones cerebrales. De esta forma, el café 
                            ayuda a nuestra memoria, aumenta la energía de nuestro cuerpo e incluso mejora 
                            el estado de ánimo.
                        </p>
                        <br>
                        <p> 
                            Nada más consumirlo actúa en el cerebro, aumentando sustancias 
                            como la dopamina o la norepinefrina y que aceleran la 
                            actividad cerebral. Esto, por ejemplo, favorece la concentración, 
                            la memoria, el ánimo, los niveles de energía, los tiempos de reacción o 
                            la función cognitiva en general.
                        </p>
                    </div>
                    <div class="col s12 m5 l5">
                        <img src="img/Cafe2.jpeg" id="imagP" class="responsive-img materialboxed"/>
                    </div>
                </section>
                <br>
                <section class="sep row">
                    <div class="col s12 m7 l7">
                        <h2 style="font-size: 1.2em">3. Mejora el redimiento físico</h2>
                        <p> 
                            La cafeína también aumenta los niveles de adrenalina de nuestro cuerpo. 
                            Esta sustancia prepara al organismo para asumir un esfuerzo físico, 
                            por eso muchos atletas consumen café de forma regular. El café mejora 
                            el rendimiento y disminuye la sensación de fatiga provocada por el esfuerzo 
                            de una actividad de alto impacto.
                        </p>
                    </div>
                    <div class="col s12 m5 l5">
                        <img src="img/Cafe3.jpeg" id="imagP" class="responsive-img materialboxed"/>
                    </div>
                </section>
                <br>
                <section class="sep row">
                    <div class="col s12 m7 l7">
                        <h2 style="font-size: 1.2em">4. Es un efectivo quemagrasas</h2>
                        <p> 
                            La cafeína tiene el honor de ser una de las pocas sustancias 
                            naturales que ayudan a nuestro cuerpo a quemar grasa. Algunos 
                            estudios indican que acelera el metabolismo, lo que puede derivar 
                            en una pérdida de peso si se acompaña el consumo regular de café 
                            con una dieta equilibrada.Reduce el riesgo de padecer cáncer de 
                            colon o mama Varios estudios indican que el consumo de cafeína 
                            reduce el riesgo de sufrir cáncer de colon o cáncer de mama. 
                            Además, un estudio del Instituto del Cáncer Dana-Farber (EEUU) 
                            ha concluido que el consumo de más de 4 tazas de café al día reduce 
                            el riesgo de reaparición en pacientes de cáncer de colon.
                        </p>
                    </div>
                    <div class="col s12 m5 l5">
                        <img src="img/Cafe4.jpeg" id="imagP" class="responsive-img materialboxed"/>
                    </div>
                </section>
                <br>
                <section class="sep row">
                    <div class="col s12 m7 l7">
                        <h2 style="font-size: 1.2em">5. Es un Aliado contra la depresión</h2>
                        <p> 
                            El café es de gran ayuda para las personas que tienen tendencias 
                            depresivas. Se ha demostrado que la cafeína bloquea a las moléculas 
                            responsables del estrés y se ha observado que previene que dicho 
                            estrés derive en una depresión.
                        </p>
                    </div>
                    <div class="col s12 m5 l5">
                        <img src="img/Cafe5.jpeg" id="imagP" class="responsive-img materialboxed"/>
                    </div>
                </section>
                <br>
                <section class="sep row">
                    <div class="col s12 m7 l7">
                        <h2 style="font-size: 1.2em">6. Es bueno para el corazón</h2>
                        <p> 
                            La cafeína no es mala para el corazón, es más, se ha llegado 
                            a la conclusión de que reduce el riesgo de sufrir un infarto. 
                            El café reduce el calcio en las arterias coronarias minimizando 
                            las posibilidades de que se produzca un infarto de miocardio.
                        </p>
                    </div>
                    <div class="col s12 m5 l5">
                        <img src="img/Cafe6.jpeg" id="imagP" class="responsive-img materialboxed"/>
                    </div>
                </section>
                <br>
                <section class="sep row">
                    <div class="col s12 m7 l7">
                        <h2 style="font-size: 1.2em">7. Disminuye el riesgo de sufrir diabetes</h2>
                        <p> 
                            Diferentes estudios indican que los consumidores habituales de café 
                            tienen un 50% menos de posibilidades de desarrollar una diabetes del 
                            tipo 2 (la más común). Parece que los beneficios de esta bebida para 
                            los diabéticos se deben a su alto contenido en antioxidantes.
                        </p>
                    </div>
                    <div class="col s12 m5 l5">
                        <img src="img/Capuchino.jpg" id="imagP" class="responsive-img materialboxed"/>
                    </div>
                </section>
            </div>
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