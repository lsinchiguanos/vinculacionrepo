<%-- 
    Document   : LlamarReportereceta
    Created on : 21/09/2021, 16:42:49
    Author     : jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="form1" method="POST" action="ReporteRecetaMedica.jsp">
            <input type="text"  name="cedulaPaciente1" id="cedulaPaciente1"/>
            <br>
            <input type="text"   name="cedulaMedico1" id="cedulaMedico1"/>
            <br>
            <input type="text"  name="fecha1" id="fecha1"/>
            <br>
            <input type="submit" name="button" id="button" value="Generar Reporte"/>
        </form>
    </body>
</html>
