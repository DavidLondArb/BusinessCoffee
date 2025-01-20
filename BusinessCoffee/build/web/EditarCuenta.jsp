<%-- 
    Document   : EditarCuenta
    Created on : 6/06/2020, 01:32:33 PM
    Author     : mvarv
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="img/Logo.png"/>
        <link rel="stylesheet" type="text/css" href="CSS/stilFormulario.css"/>
        <title>Gestionar Cuenta</title>
    </head>
    <body>
        <div class="contenedor">
            <div class="tit">
                <h1 id="titu">Business Coffee</h1>
                <img id="Logo" src="img/Logo.png" alt="Logo">
            </div>
            <form class="boton" method="post" action="Login" onsubmit="return validar()">
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
                    <p>G&eacute;nero</p>
                    <select id="cars" name="Genero" class="formInput">
                        <option value="Masculino">Masculino</option>
                        <option value="Femenino">Femenino</option>
                    </select>
                </div>
                <div class="group">
                    <p>Fecha de nacimiento</p>
                    <input class="formInput" type="date" name="FechaNac" required/>
                </div>
                <div class="group">      
                    <input class="formInput" type="tel" name="Celular" required/>
                    <label>Celular</label>
                </div>
                <div class="group">      
                    <input class="formInput" type="email" name="Correo" onchange="cambio();" required/>
                    <label id="email">E-mail</label>
                </div>
                <div class="group">      
                    <input class="formInput" type="password" name="Contra" required/>
                    <label>Contraseña</label>                
                    <p id="contraMen" class="">
                        Al menos 8 caracter(es), al menos 1 n&uacute;mero, al menos 
                        1 min&uacute;scula(s), al menos 1 may&uacute;scula(s)
                    </p>
                </div>
                <div class="group">      
                    <input class="formInput" type="password" name="ConfContra" required/>
                    <label>Confirmar contraseña</label>
                    <p id="ConfContraseña">La contraseña no coincide</p>
                </div>
                
                <a href="index.jsp" class="cancelar bot">Cancelar</a>
                <input type="submit" class="ingresar bot" value="Registrarse"/>
                <input type="hidden" name="pagina" value="RegistroAdmin"/>
                <br>
            </form>
        </div>
        <script src="JS/RegistroJS.js"></script>
    </body>
</html>
