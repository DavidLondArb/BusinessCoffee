<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="img/Logo.png"/>
        <link rel="stylesheet" type="text/css" href="CSS/stilFormulario.css"/>
        <title>Registro</title>
    </head>
    <body>
        <div class="contenedor">
            <div class="tit">
                <h1 id="titu">Business Coffee</h1>
                <img id="Logo" src="img/Logo.png" alt="Logo">
            </div>
            <form class="boton" method="post" action="Login" onsubmit="return validar()">
                <%
                    Integer mal=(Integer) request.getAttribute("correoValido");
                    System.out.println("Loginnn "+mal);
                    if(mal!=null){
                %>
                <p class="fondo2"><strong>Credenciales en uso</strong><br>
                    El correo ingresado ya est&aacute; en uso</p>
                <%
                    }
                %>
                <div class="group">      
                    <input class="formInput" type="text" name="Cedula" required/>
                    <label>C&eacute;dula</label>
                </div>
                <div class="group">      
                    <input class="formInput" type="text" name="Nombre" required/>
                    <label>Nombre</label>
                </div>
                <div class="group">      
                    <input class="formInput" type="text" name="Apellido" required/>
                    <label>Apellido</label>
                </div>
                <div class="group">      
                    <input class="formInput" type="email" name="Correo" onchange="cambio();" required/>
                    <label id="email">Correo</label>
                </div>
                <div class="group">      
                    <input class="formInput" type="password" name="Contra" required/>
                    <label>Contraseña</label>
                    <p id="contraMen" class="">
                        Al menos 8 caracter(es), al menos 1 n&uacute;mero, al menos 
                        1 minúscula(s), al menos 1 mayúscula(s)
                    </p>
                </div>
                <div class="group">      
                    <input class="formInput" type="password" name="ConfContra" required/>
                    <label>Confirmar contraseña</label>
                    <p id="ConfContraseña">La contraseña no coincide</p>
                </div>
                <a href="index.jsp" class="cancelar bot">Cancelar</a>
                <input type="submit" class="ingresar bot" name="confReg" value="Registrarse"/>
                <input type="hidden" name="pagina" value="RegistroCliente"/>
                <br>
            </form>
        </div>
        <script src="JS/RegistroJS.js"></script>
    </body>
</html>
