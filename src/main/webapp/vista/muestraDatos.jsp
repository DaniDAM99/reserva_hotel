<%-- 
    Document   : muestraDatos
    Created on : 25-ene-2021, 20:46:13
    Author     : DAW-B
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.Reserva"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            Reserva reserva = (Reserva) request.getAttribute("reserva"); 
            
            SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
            String fecha_entrada = formatter.format(reserva.getFecha_entrada());
            String fecha_salida = formatter.format(reserva.getFecha_salida());
        %>
        
        <h1>Datos reserva</h1>
        <p>Fecha entrada: <%= fecha_entrada %></p>
        <p>Fecha salida: <%= fecha_salida %></p>
        <p>Número de días: ${reserva.getDiasReserva()}</p>
        <p>Precio: ${reserva.getPrecioReserva()} €</p>
    </body>
</html>
    
<%--
Haz una aplicación para la reserva de un hotel. Con un formulario ( index.jsp ) 
que tenga un input de tipo date para la fecha de entrada y otro para la fecha de salida. 
También tendrá un listado tipo select con dos tipo( normal y superior). Este formulario 
enviará los datos a un servlet que a su vez llamará a una clase calcular que tendrá como 
parámetros, las dos fechas y el tipo y que devolverá el coste total a pagar. Hay que tener 
en cuenta que la habitación normal cuesta 50€ y la superior 75€ ( coste total= precio*numero 
de días + iva correspondiente ). El resultado con el resumen de los datos los envía el servlet 
a un jsp ( muestraResultado.jsp ) que los muestra.
--%>
