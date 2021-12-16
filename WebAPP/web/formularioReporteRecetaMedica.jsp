<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Historial Medico</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important;">
        <a class="logo" href="Principal.jsp">
            <img style="margin-top:8px"src="img/circled_left_30px.png" title="Ir a la página anterior" alt="logo">
        </a>

        <nav class="nav-tp"></nav>
    </header>
         <div class="div-head-tittle"><h2></h2></div>
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
                    <td width="415"><label for="cedulaGaleno" name="cedulaGaleno" id="cedulaGaleno"></label>
                        <input type="text" name="cedulaGaleno" id="cedulaGaleno"></td>
                </tr>
                <tr>
                    <td width="168">INGRESE LA FECHA:</td>
                    <td width="415"><label for="fecha"></label>
                        <input type="date" name="fecha" id="fecha" onchange="myFunction(value)"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="Generar receta medica "></td>
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
