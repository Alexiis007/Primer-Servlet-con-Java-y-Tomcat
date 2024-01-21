<%-- 
    Document   : index
    Created on : 19 ene 2024, 15:56:34
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos del usuario</h1>
        <%-- Action seria el servlet y el methodo el verbo en este caso post --%>
        <form action="SvUsuarios" method="POST">
            <p>
                <label>
                    DNI:
                </label>
                <%-- los datos que se mandaran deben llevar name para resivirlos en el
                servlet
                --%>
                <input type="text" name="dni">
            </p>
            <p>
                <label>
                    Nombre:
                </label>
                <input type="text" name="nombre">
            </p>
            <p>
                <label>
                    Apellido:
                </label>
                <input type="text" name="apellido">
            </p>
            <p>
                <label>
                    Telefono:
                </label>
                <input type="text" name="telefono">
            </p>
            <button type="sumbit">Enviar</button>
        </form>
    </body>
</html>
