<%-- 
    Document   : AgregarProducto
    Created on : 19/12/2018, 03:14:45 PM
    Author     : Angel Albinagorta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Agregar Pruducto</h3>
       <form method="POST">
           Nombre<input type="text" name="nombre" ><br>
            Stock<input type="text" name="stock" ><br>
            Precio<input type="text" name="precio" ><br>
            <input type="submit" value="Agregar">
        </form>
        
    </body>
</html>
