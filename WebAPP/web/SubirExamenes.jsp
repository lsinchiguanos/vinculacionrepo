<%@page import="java.sql.*"%>
<%@page import="BD.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //CONECTANOD A LA BASE DE DATOS:
            conexion c = new conexion();
            PreparedStatement ps;
            ResultSet rs;
            int id = Integer.parseInt(request.getParameter("codigo"));
            ps = c.getConecction().prepareStatement("select idmedicinageneral as codigo, paciente_dni as cedula, fechaconsulta as fecha, motivoconsulta as motivo from medicinageneral where cargararchivo is null and idmedicinageneral =" + id);
            rs = ps.executeQuery();
            while (rs.next()) {
        %>
        <div class="container">
            <h1>Modificar Registro</h1>
            <hr>
            
            <form id="form1" action="subirExamenes" method="POST" enctype="multipart/form-data" style="width: 500px; height: 400px">
                <input type="text"  readonly="" name="codigo" class="form-control" style="visibility:hidden;" value="<%= rs.getInt("codigo")%>"/>
                CEDULA DEL PACIENTE
                <input type="text" name="txtNom" class="form-control" value="<%= rs.getString("cedula")%>"/><br>
                FECHA DE LA CONSULTA
                <input type="text" name="txtDNI" class="form-control" value="<%= rs.getString("fecha")%>"/>
                <br>
                MOTIVO DE LA CONSULTA
                <input type="text" name="txtDNI" class="form-control" value="<%= rs.getString("motivo")%>"/>
                <br>
                CARGAR EXAMENES
                <input type="file" name="cargarArchivos"/>
                <br>
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>
            </form>
            <%}%>
        </div>
    </body>
</html>

