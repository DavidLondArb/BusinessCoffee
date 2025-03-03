<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="img/Logo.png"/>
        <link rel="stylesheet" type="text/css" href="CSS/stilIniSesion.css"/>
        <script type="text/javascript" src="JS/javascript.js"></script>
        <title>Iniciar sesi&oacute;n</title>
    </head>
    <body>
        <div class="contenedor">
            <div class="tit">
                <h1 id="titu">Business Coffee</h1>
                <img id="Logo" src="img/Logo.png" alt="Logo">
            </div>
            <form class="boton" method="post" action="Login">
                <%
                    Integer mal=(Integer) request.getAttribute("valido");
                    if(mal!=null){
                %>
                <p class="fondo"><strong>Credenciales incorrectas</strong><br>
                                Nombre de usuario o contraseña no válidos</p>
                <%
                    }
                %>
                <div class="group">      
                    <input class="formInput" type="text" name="Correo" required/>
                    <label>Email</label>
                </div>
                <div class="group">      
                    <input class="formInput" type="password" name="Contra" required/>
                    <label>Contraseña</label>
                </div>
                <div class="group">
                    <h2 style="font-size: 25px;">Perfil</h2>
                    <select name="Perfil" class="formInput">
                        <option value="Admin" name="Administrador">Administrador</option>
                        <option value="Cliente" name="Cliente">Cliente</option>
                    </select>
                </div>
                <input type="submit" class="ingresar bot" name="Ingreso" value="Ingresar"/>
                <br>
                <input type="hidden" name="pagina" value="IniciarSesion"/>
            </form>
            <div class="abajo">
                <a href="index.jsp" class="cancelar bot">Cancelar</a>
                <a href="#registrar" name="SignIn" class="registrar bot">Registrarse</a>
            </div>
        </div>
        <%
            if (request.getParameter("cerrar") != null) {
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                response.setHeader("Pragma", "no-cache");
                response.setDateHeader("Expires", 0);
                session.removeAttribute("nombre");
                session.invalidate();
            }
        %>
        <aside id="registrar" class="elegirReg">
            <div class="contentido">
                <header>
                    <a href="#" class="cerrar">Cerrar</a>
                    <h2>Selecciona el prefil a crear</h2>
                </header>
                <a href="RegistroCliente.jsp" id="cuentas" name="RegCl">Cliente</a>
                <a href="RegistroAdmin.jsp" name="RegAd" id="cuentas">Administrador</a>
            </div>
        </aside>
        <script src="JS/javascript.js"></script>
    </body>
</html>