<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="Controller.LoginController"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "Model.Constructor"%> 
<%@ page import = "DAO.LoginDAO"%> 
<%@ page import = "java.util.LinkedList"%>
<%@ page import = "BD.conexion"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Principal/css/main.css" />
        <link rel="stylesheet" href="css/CSS_Transferir.css">
        <link href="css/ActualizarDatos.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="Principal/css/main.css" />
        <link rel="stylesheet" href="css/CSS_Transferir.css">
        <title>Actualizar datos personales medicos</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important;">
            <a class="logo" href="Principal.jsp">
                <img style="margin-top:8px"src="img/circled_left_30px.png" title="Ir a la página anterior" alt="logo">
            </a>
            <a class="logo" id="ulUserData" href="index.html"></a>
            <nav>
            </nav>
        </header>
        <%
            HttpSession s = request.getSession();
            PreparedStatement pst;
            conexion cn = new conexion();
            ResultSet rs;
            PreparedStatement ps;
            String sql;
            sql = "select * from galeno where galeno_user='" + session.getAttribute("galeno_user11") + "'";
            pst = cn.getConecction().prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
        %>
        <form id="form1" autocomplete="off">
            <section  class="form-register">
                <center><h4>Datos Personales</h4></center>
                IDENTIFICACION: 
                <input class="controls" type="text" name="cedula" id="Cedula" value="<%= rs.getInt("galeno_dni")%>" disabled="true">
                PRIMER NOMBRE:
                <input class="controls" type="text" name="PrimerNombre" id="PrimerNombre"value="<%= rs.getString("galeno_primer_nombre")%>" required="" onkeypress="return soloLetras(event)">
                SEGUNDO NOMBRE:
                <input class="controls" type="text" name="SegundoNombre" id="SegundoNombre"value="<%= rs.getString("galeno_segundo_nombre")%>"required="" onkeypress="return soloLetras(event)">
                TELEFONO O CELULAR:
                <input class="controls" type="text" name="galeno_telefono" id="galeno_telefono"value="<%= rs.getString("galeno_telefono")%>"required="" onkeypress='return validaNumericos(event)'>
                DIRECCION:
                <input class="controls" type="text" name="galeno_direccion" id="galeno_direccion"value="<%= rs.getString("galeno_direccion")%>"required="">
                PROVINCIA:
                <input class="controls" type="text" name="galeno_provincia" id="galeno_provincia"value="<%= rs.getString("galeno_provincia")%>"required="" onkeypress="return soloLetras(event)">
                CANTON:
                <input class="controls" type="text" name="galeno_canton" id="galeno_canton" value="<%= rs.getString("galeno_canton")%>"required="" onkeypress="return soloLetras(event)">
                PARROQUIA:
                <input class="controls" type="text" name="galeno_parroquia" id="galeno_parroquia"value="<%= rs.getString("galeno_parroquia")%>"required="" onkeypress="return soloLetras(event)">
                EMAIL:
                <input class="controls" type="text" name="galeno_correoelectronico" id="galeno_correoelectronico"value="<%= rs.getString("galeno_correoelectronico")%>"required="">
                <center><input class="botons" type="submit" value="Actualizar"></center>
            </section>
            <script>
                function validaNumericos(event) {
                    if (event.charCode >= 48 && event.charCode <= 57) {
                        return true;
                    }
                    return false;
                }
                function soloLetras(e) {
                    key = e.keyCode || e.which;
                    tecla = String.fromCharCode(key).toLowerCase();
                    letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
                    especiales = [8, 37, 39, 46];

                    tecla_especial = false
                    for (var i in especiales) {
                        if (key == especiales[i]) {
                            tecla_especial = true;
                            break;
                        }
                    }

                    if (letras.indexOf(tecla) == -1 && !tecla_especial)
                        return false;
                }
            </script>
        </form>
        <%}%>
        <%
            String dni, Pnom, Snom, telefono, direccion, provincia, canton, parroquia, email;
            dni = request.getParameter("Cedula");
            Pnom = request.getParameter("PrimerNombre");
            Snom = request.getParameter("SegundoNombre");
            telefono = request.getParameter("galeno_telefono");
            direccion = request.getParameter("galeno_direccion");
            provincia = request.getParameter("galeno_provincia");
            canton = request.getParameter("galeno_canton");
            parroquia = request.getParameter("galeno_parroquia");
            email = request.getParameter("galeno_correoelectronico");
            if (Pnom != null && Snom != null && telefono != null && direccion != null && provincia != null && canton != null && parroquia != null && email != null) {
                ps = cn.getConecction().prepareStatement("update galeno set galeno_primer_nombre='" + Pnom + "', galeno_segundo_nombre='" + Snom + "', galeno_telefono='" + telefono + "'"
                        + ",galeno_direccion='" + direccion + "'"
                        + ",galeno_provincia='" + provincia + "' "
                        + ",galeno_canton='" + canton + "'"
                        + " ,galeno_parroquia='" + parroquia + "'"
                        + ",galeno_correoelectronico='" + email + "'"
                        + " where galeno_user='" + session.getAttribute("galeno_user11") + "'");
                ps.executeUpdate();
                response.sendRedirect("Principal.jsp");
            }


        %>
    </body>
</html>
