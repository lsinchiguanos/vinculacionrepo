<%-- 
    Document   : ActualizarDatosPersonalesMedicos
    Created on : 12/08/2021, 9:02:17
    Author     : jean
--%>

<%@page import="Controller.LoginController"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "Model.Constructor"%> 
<%@ page import = "DAO.LoginDAO"%> 
<%@ page import = "java.util.LinkedList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Principal/css/main.css" />
        <link rel="stylesheet" href="css/CSS_Transferir.css">
        <title>Actualizar datos personales medicos</title>
    </head>
    <body>
        <header id="header" style="">
            <a class id="ulUserData" href="index.html"></a>
            <nav>
                <a href="cerrar.jsp" style="color:white" >Cerrar sesión</a>
            </nav>
        </header>
        <table border="1">
            <tr>
                <td>id</td>
                <td>nombre</td>
                <td>apellido</td>
                <td>telefono</td>
                <td>id</td>
                <td>nombre</td>
                <td>apellido</td>
                <td>telefono</td>
                <td>telefono</td>
                <td>telefono</td
            </tr>
            <%
                 ArrayList<Constructor> lista = new LoginDAO().getContactos();
                for (int i = 0; i < lista.size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + lista.get(i).getGaleno_dni()+ "</td>");
                    out.println("<td>" + lista.get(i).getGaleno_primer_nombre()+ "</td>");
                    out.println("<td>" + lista.get(i).getGaleno_telefono()+ "</td>");
                    out.println("<td>" + lista.get(i).getGaleno_direccion()+ "</td>");
                    out.println("<td>" + lista.get(i).getGaleno_segundo_nombre()+ "</td>");
                    out.println("<td>" + lista.get(i).getGaleno_provincia()+ "</td>");
                    out.println("<td>" + lista.get(i).getGaleno_canton()+ "</td>");
                    out.println("<td>" + lista.get(i).getGaleno_parroquia()+ "</td>");
                    out.println("<td>" + lista.get(i).getGaleno_correoelectronico()+ "</td>");
                    out.println("</tr>");
                }
            %>
        </table>
    </body>
</html>
