<%-- 
    Document   : EditProducto
    Created on : 19/12/2018, 03:15:58 PM
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
      <h3>Edit Pruducto</h3>
       <form method="POST">
           Nombre<input type="text" name="nombre"  value="${datos[0].nombre}"><br>
           Stock<input type="text" name="stock"  value="${datos[0].stock}"><br>
            Precio<input type="text" name="precio" value="${datos[0].precio}"><br>
            <input type="submit" value="Actualizar">
        </form>
    </body>
</html>
