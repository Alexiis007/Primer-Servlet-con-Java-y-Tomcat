<%-- 
    Document   : mostrarUsuarios
    Created on : 20 ene 2024, 19:49:17
    Author     : HP
--%>

<%@page import="java.util.List"%>
<%@page import="logica.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>
        <h1>Lista de Usuarios</h1>
        <%
            //Se crea una lista con la estructua del modelo Usuarios y se le agregan los datos
            //en base a la lista creada en el metodo GET la cual se subio a la sesion activa
            List<Usuarios> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
            int i=0;
            for(Usuarios usuario : listaUsuarios)
            {
            i=i+1;
        %>
        
        <p><b>Usuario #<%= i %></b></p>
        <p>DNI: <%= usuario.getDNI() %></p>
        <p>Nombre: <%= usuario.getNombre() %></p>
        <p>Apellido: <%= usuario.getApellido() %></p>
        <p>Telefono: <%= usuario.getTelefono() %></p>
        
        <%
            }
        %>
    </body>
</html>
