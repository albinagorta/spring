<%-- 
    Document   : EditProducto
    Created on : 19/12/2018, 10:54:13 AM
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
        <h1>Editar</h1>
        <form method="POST">
            <input type="text" name="nombre" value="${datos[0].nombre}"><br>
            <input type="text" name="stock" value="${datos[0].stock}"><br>
            <input type="text" name="precio" value="${datos[0].precio}"><br>
            <input type="submit" name="Actualizar" ><br>
        </form>
        
    </body>
</html>
