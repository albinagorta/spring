<%-- 
    Document   : Producto
    Created on : 19/12/2018, 10:53:56 AM
    Author     : Angel Albinagorta
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto</title>
    </head>
    <body>
        <h1>Producto</h1>
        
        <div>
             <a href="AgregarProducto.htm">Agregar</a>
        </div>
        
        
        
        <table>
            <tr>
                <th>codigo</th>
                <th>Nombre</th>
                <th>stock</th>
                <th>Precio</th>
                  <th>Eliminar</th>
                   <th>Editar</th>
            </tr>
            <c:forEach  items="${datos}" var="d">
                
          
            <tr>
                <td>${d.id}</td>
                 <td>${d.nombre}</td>
                  <td>${d.stock}</td> 
                   <td>${d.precio}</td> 
                  <td>
                      <a href="Eliminar.htm?id=${d.id}">Eliminar</a>  
                  </td>
                  <td>
                      <a href="EditProducto.htm?id=${d.id}">Editar</a>
                  </td>
               
            </tr>
              </c:forEach>
        </table>
        
    </body>
</html>
