<%-- 
    Document   : formulario
    Created on : 26/09/2013, 03:46:47 PM
    Author     : Unknown
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="form1" method="post" action="REPORTERecetaMedica.jsp">
            <%
                HttpSession s = request.getSession();
                //variables de session
            %>
            <table width="487" align="center">
                <tr>
                    <td colspan="2" align="center"><strong>REPORTES PDF RECETA MEDICA </strong></td>
                </tr>
                <tr>
                    <td width="168">INGRESE CEDULA DEL PACIENTE:</td>
                    <td width="415"><label for="cedulaCliente"></label> 
                        <input type="text" name="cedulaCliente" id="cedulaCliente"></td>
                </tr>
                <tr>
                    <td width="168">INGRESE SU CEDULA:</td>
                    <td width="415"><label for="cedulaGaleno"></label>
                        <input type="text" name="cedulaGaleno" id="cedulaGaleno"></td>
                </tr>
                <tr>
                    <td width="168">INGRESE LA FECHA:</td>
                    <td width="415"><label for="fecha"></label>
                        <input type="text" name="fecha" id="fecha"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="Generar Reporte"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
