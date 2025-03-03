<%-- 
    Document   : EliminarProducto
    Created on : 2/06/2020, 01:49:17 PM
    Author     : mvarv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="img/Logo.png"/>
        <link rel="stylesheet" type="text/css" href="CSS/stilPerfil.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/stilFormulario.css"/>
        <title>Business Coffee</title>
    </head>
    <body>
        <div class="contenedor">
            <div class="tit">
                <h1 id="titu">Business Coffee</h1>
                <img id="Logo" src="img/Logo.png" alt="Logo">
            </div>
            <form class="boton" method="post" action="Login" onsubmit="return validar()">
                <div class="group">      
                    <input class="formInput" type="text" required/>
                    <label>Nombre del Producto</label>
                </div>
                <div class="group">      
                    <input class="formInput" type="text" required/>
                    <label>Codigo del producto</label>
                </div>
                
                <a href="PerfilAdmin.jsp" class="cancelar bot">Cancelar</a>
                <input type="submit" class="ingresar bot" value="Eliminar"/>
                <input type="hidden" name="pagina" value="RegistroAdmin"/>
                <br>
            </form>
        </div>
        <script src="JS/RegistroJS.js"></script>
    </body>
</html>
