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
        <form name="form1" method="post" action="REPORTEHistorialpaciente.jsp">
            <%
                HttpSession s = request.getSession();
                //variables de session
            %>
            <table width="487" align="center">
                <tr>
                    <td colspan="2" align="center"><strong>REPORTES PDF HISTORIAL PACIENTE </strong></td>
                </tr>
                <tr>
                    <td width="168">SU USUARIO ES:</td>
                    <td width="415"><label for="usuario"></label> 
                        <input type="text" name="usuario" id="usuario"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="Generar Reporte "></td>
                </tr>
            </table>
        </form>
        <script>
            var a;
            function myFunction(val) {
                a = val.split("-").reverse().join("/");
                document.getElementById("fecha").type = "text";
                document.getElementById("fecha").value = a;
            }
        </script>
    </body>
</html>
