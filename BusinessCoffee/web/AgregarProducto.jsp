<%-- 
    Document   : AgregarProducto
    Created on : 2/06/2020, 01:48:58 PM
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
        <%
            HttpSession sesion = request.getSession(false);
            String nombre = (String) sesion.getAttribute("nombre");
            int codigo = (Integer) sesion.getAttribute("codigo");
            System.out.println("name " + nombre);
            if (nombre == null) {
                response.sendRedirect("IniSesion.jsp");
            }
        %>
        <div class="contenedor">
            <div class="tit">
                <h1 id="titu">Business Coffee</h1>
                <img id="Logo" src="img/Logo.png" alt="Logo">
            </div>
            <form class="boton" method="post" action="Login" enctype="multipart/form-data">
                <div class="group">      
                    <input class="formInput" name="nombreProducto" type="text" required/>
                    <label>Nombre del Producto</label>
                </div>
                <div class="group">      
                    <textarea class="formInput" name="Descripcion" rows="10" maxlength="2000" placeholder="Descripci&oacute;n del producto"></textarea>
                </div>
                <div id="InfIngred" class="group">      
                    <% for (int i=0;i<15;i++){%>
                        <input class="formInput" name="Ingrediente<%=i%>" placeholder="Ingrediente" type="text" style="display:inline-table; width: 65%;position: relative;left:35%;"/>
                        <input class="formInput" name="Cantidad<%=i%>" placeholder="Cantidad" type="text" style="display:inline-table;width: 25%;position: relative;left:15%;"/>
                    <%}%>
                </div>
                <div class="group">      
                    <textarea class="formInput" name="Proceso" rows="10" maxlength="2000" placeholder="Proceso"></textarea>
                </div>                
                <div class="group">      
                    <textarea class="formInput" name="Observaciones" rows="10" maxlength="2000" placeholder="Observaciones"></textarea>
                </div>  
                <div class="group">      
                    <p>Imagen del producto</p>
                    <input class="formInput" name="imgproducto" type="file" required/>
                </div>
                <div class="group">      
                    <input class="formInput" name="urlProducto" type="url"/>
                    <label>Url del video</label>
                </div>
                <a href="PerfilAdmin.jsp" class="cancelar bot">Cancelar</a>
                <input type="submit" class="agregar bot" value="Agregar"/>
                <input type="hidden" name="pagina" value="InsertProducto"/>
                <br>
            </form>
        </div>
        <script src="JS/RegistroJS.js"></script>
    </body>
</html>

