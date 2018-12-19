<%-- 
    Document   : Producto
    Created on : 19/12/2018, 03:16:12 PM
    Author     : Angel Albinagorta
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="AgregarProducto.htm">Agregar</a>
        <table border="1">
            <thead>
                <tr>
                    <th>codigo</th>
                     <th>nombre</th>
                      <th>stock</th>
                       <th>precio</th>
                       <th>opcion</th>
                       
                </tr>
            </thead>
            <c:forEach var="d"  items="${datos}">
             <tbody>
                
                <tr><td>${d.id}</td>
                    <td>${d.nombre}</td>
                    <td>${d.stock}</td>
                    <td>${d.precio}</td>
                     <td>
                          <a href="EditProducto.htm?id=${d.id}">Editar</a>
                           <a href="Eliminar.htm?id=${d.id}">Eliminar</a>
                     </td>
                </tr>
               
            </tbody>
              </c:forEach>
        </table>

        
    </body>
</html>
