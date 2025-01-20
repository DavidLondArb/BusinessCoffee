<%-- 
    Document   : EditarProducto
    Created on : 5/06/2020, 09:03:11 PM
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
            <form class="boton" method="post" action="Login">
                <div class="group">      
                    <input class="formInput" type="text" required/>
                    <label>C&oacute;digo del Producto</label>
                </div>
                <a href="PerfilAdmin.jsp" class="cancelar bot edit">Cancelar</a>
                <a class="cancelar bot edit" onclick="mostrarEdit();">Buscar</a>
                <div id="escondEdit" class="escondEdit">
                    <div class="group">      
                        <textarea class="formInput" style="margin-top: 10px;" name="Descripcion" rows="10" maxlength="2000">
La vida es una combinaci&oacute;n de caf&eacute;, magia y tortas
                        </textarea>
                    </div>
                    <div class="group">      
                        <textarea class="formInput" name="Ingredientes" rows="10" maxlength="2000">1 taza de aceite. 2 huevos. 1 cucharada de esencia de vainilla. 1 taza de leche. 1 taza de azúcar. 4 tazas de harina. 1 cucharada de polvo de hornear. 1 taza de azúcar rubio. 1 cucharada de canela. 100 gr de manteca. 1 cucharada de café instantáneo</textarea>
                    </div>
                    <div class="group">      
                        <textarea class="formInput" name="Proceso" rows="10" maxlength="2000">1. En un bowl, mezclar el aceite, los huevos, la esencia de vainilla y la leche. 2. Agregar el azúcar, la harina, el polvo de hornear y la sal. 3. Colocar la mitad de la masa en una fuente de horno. 4. En otro bowl, mezclar el azúcar rubio con la canela, el café y la manteca. 5. Colocar la mezcla de café y manteca. 6. Por último, espolvorear con la mitad de la mezcla sobrante. 7. Hornear a 180º por 20 minutos. </textarea>
                    </div>                
                    <div class="group">      
                        <textarea class="formInput" name="Observaciones" rows="10" maxlength="2000">Observaciones</textarea>
                    </div>                
                    <div class="group">     
                        <p>Imagen o video del producto</p>
                        <input class="formInput" type="file" name="multimedia"/>
                    </div>
                    <a href="PerfilAdmin.jsp" class="cancelar bot">Cancelar</a>
                    <input type="submit" class="editar bot" value="Editar"/>
                    <input type="hidden" name="pagina" value="EditarAdmin"/>
                </div>
                <br>
            </form>
        </div>
        <script src="JS/RegistroJS.js"></script>
    </body>
</html>

