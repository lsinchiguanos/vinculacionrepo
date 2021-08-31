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
        <link href="css/Actualizardatosmedico.css" rel="stylesheet" type="text/css"/>
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
        <div class="div-head-tittle"><h2></h2></div>
        <form id="form1" autocomplete="off">
            <section class="sec-main">
                <div class="div-cont-main">
                    <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                        <thead >
                            <tr>
                                <th>Numero de identificacion</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-name"><input type="text" id="txt-namen" class="inp-name" placeholder="Cedula" name="cedula"  value="<%= rs.getInt("galeno_dni")%>" disabled="true"></div> </td>
                                <td><div class="div-cont-name"><input type="text" id="txt-namen" class="inp-name" placeholder="Primr Nombre" name="PrimerNombre" value="<%= rs.getString("galeno_primer_nombre")%>" required="" onkeypress="return soloLetras(event)"onkeyup="mayus(this);"></div></td>
                                <td><div class="div-cont-name"><input type="text" id="txt-namen" class="inp-name" placeholder="Segundo Nombre" name="SegundoNombre" value="<%= rs.getString("galeno_segundo_nombre")%>"required="" onkeypress="return soloLetras(event)" onkeyup="mayus(this);"></div></td> 
                            </tr> 
                        </tbody>
                        <thead >
                            <tr>
                                <th>Telefono o Celular</th>
                                <th>Provincia</th>
                                <th>Canton</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-name"><input type="text" id="txt-namen" class="inp-name" placeholder="Telefono o Celular"  name="galeno_telefono"  value="<%= rs.getString("galeno_telefono")%>"required="" onkeypress='return validaNumericos(event)'></div></td>
                                <td><div class="div-cont-name"><input type="text" id="txt-namen" class="inp-name" placeholder="Provincia" name="galeno_provincia" value="<%= rs.getString("galeno_provincia")%>"required="" onkeypress="return soloLetras(event)"onkeyup="mayus(this);"></div></td>
                                <td><div class="div-cont-name"><input type="text" id="txt-namen" class="inp-name" placeholder="Canton"  name="galeno_canton" value="<%= rs.getString("galeno_canton")%>"required="" onkeypress="return soloLetras(event)"onkeyup="mayus(this);"></div></td> 
                            </tr> 
                        </tbody>
                        <thead >
                            <tr>
                                <th>Parroquia</th>
                                <th>Direccion</th>
                                <th>Correo Electronico</th> 
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-name"><input type="text" id="txt-namen" class="inp-name" placeholder="Parroquia" name="galeno_parroquia" value="<%= rs.getString("galeno_parroquia")%>"required="" onkeypress="return soloLetras(event)"onkeyup="mayus(this);"></div></td>
                                <td><div class="div-cont-name"><input type="text" id="txt-namen" class="inp-name" placeholder="Direccion" name="galeno_direccion" value="<%= rs.getString("galeno_direccion")%>"required=""></div></td>
                                <td><div class="div-cont-name"><input type="text" id="txt-namen" class="inp-name" placeholder="Correo Electronico"  name="galeno_correoelectronico" value="<%= rs.getString("galeno_correoelectronico")%>"required=""></div></td>

                            </tr> 
                            <tr>
                                <td>  <input type="submit" id="btn-action" class="btn-accept" value="Guardar"/></td>
                                <td><input type="button" id="btn-action" class="btn-accept" value="Cancelar"/></td>
                            </tr>

                        </tbody>                     
                    </table>
                </div>
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
                function mayus(e) {
                    e.value = e.value.toUpperCase();
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
