<%-- 
    Document   : ReporteRecetaMedica
    Created on : 21/09/2021, 16:16:51
    Author     : jean
--%>

<%@ page import="net.sf.jasperreports.engine.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="BD.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            conexion conn = new conexion();
            File reportFile = new File(application.getRealPath("/Reportes/historialReceta.jasper"));
            Map parameters = new HashMap();
            String cedulaPacientes = request.getParameter("cedulaPaciente1");
            String cedulaMedicos = request.getParameter("cedulaMedico1");
            String Fechas = request.getParameter("fecha1");

            parameters.put("cedulaPaciente", cedulaPacientes);
            parameters.put("cedulaGaleno", cedulaMedicos);
            parameters.put("fecha", Fechas);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn.getConecction());
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream ouputStream = response.getOutputStream();
            ouputStream.write(bytes, 0, bytes.length);
            ouputStream.flush();
            ouputStream.close();
        %>
    </body>
</html>
