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
    <body style="margin-top: 30px">      
        <%
            //CONECTANOD A LA BASE DE DATOS:
            conexion c = new conexion();
            PreparedStatement ps;
            //Emnpezamos Listando los Datos de la Tabla Usuario
            Statement smt;
            ResultSet rs;
            smt = c.getConecction().createStatement();
            rs = smt.executeQuery("select idmedicinageneral as codigo, paciente_dni as cedula, fechaconsulta as fecha, motivoconsulta as motivo from medicinageneral where cargararchivo is null and galeno_user = '" + session.getAttribute("galeno_user11") + "'");
            //Creamo la Tabla:     
        %>
        <header id="header" style=" background: #007653 !important;">
            <a class="logo" href="Principal.jsp">
                <img style="margin-top:8px"src="img/circled_left_30px.png" title="Ir a la página anterior" alt="logo">
            </a>
            <a class="logo" id="ulUserData" href="index.html"></a>
            <nav>
            </nav>
        </header>
        <div class="container">               
            <!--<a  class="btn btn-success" href="Agregar.jsp">Nuevo Registro</a> Esto es Cuando se Crea un nuevo Archivo Agregar.jsp -->         
            <table class="table table-bordered"  id="tablaDatos">
                <thead>
                    <tr>
                        <th class="text-center">CODIGO</th>
                        <th>CEDULA DEL PACIENTE</th>
                        <th class="text-center">FECHA DE CONSULTA</th>
                        <th class="text-center">MOTIVO DE CONSULTA</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody id="tbodys">
                    <%
                        while (rs.next()) {
                    %>
                    <tr>
                        <td class="text-center"><%= rs.getInt("codigo")%></td>
                        <td><%= rs.getString("cedula")%></td>
                        <td class="text-center"><%= rs.getString("fecha")%></td>
                        <td class="text-center"><%= rs.getString("motivo")%></td>
                        <td class="text-center">
                            <a href="SubirExamenes.jsp?codigo=<%= rs.getInt("codigo")%>" class="btn btn-primary">Seleccionar Paciente</a>
                        </td>
                    </tr>
                    <%}%>
            </table>
        </div>        

    </div>        
    <script src="js/jquery.js" type="text/javascript"></script>             
    <script src="js/bootstrap.min.js" type="text/javascript"></script>        
</body>
</html>
