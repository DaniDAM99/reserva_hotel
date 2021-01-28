<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Reserva habitacíon hotel</h1>
        <form action="servletCalcula">
            Fecha entrada:<br/>
            <input type="date" name="fecha_entrada"><br/>
            Fecha salida:<br/>
            <input type="date" name="fecha_salida"><br/>
            Número de habitaciones:<br/>
            <input type="number" name="habitaciones"><br/>
            Tipo: <br/>
            <select name="tipo">
                <option value="normal">Normal</option>
                <option value="superior">Superior</option>
            </select> <br/>
            <p></p>
            <input type="submit" value="Calcular precio">
        </form>
    </body>
</html>