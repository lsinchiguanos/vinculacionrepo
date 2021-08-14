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
        <link href="css/ActualizarDatos.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="Principal/css/main.css" />
        <link rel="stylesheet" href="css/CSS_Transferir.css">
        <title>Actualizar datos personales medicos</title>
    </head>
    <body>
        <%HttpSession s = request.getSession();%>
        <header>
            <nav class="nav-tp"></nav>
        </header>      

        <div class="div-head-tittle"><h2></h2></div>

        <form id="form1" action="/WebAPP/CargarDatosPersonales"  autocomplete="off">
            <section  class="form-register">
                <center><h4>Datos Personales</h4></center>
                <input class="controls" type="text" name="cedula" id="Cedula">
                <input class="controls" type="text" name="PrimerNombre" id="PrimerNombre">
                <!--
                <input class="controls" type="text" name="SegundoNombre" id="SegundoNombre">
                <input class="controls" type="text" name="galeno_telefono" id="galeno_telefono">
                <input class="controls" type="text" name="galeno_direccion" id="galeno_direccion">
                <input class="controls" type="text" name="galeno_provincia" id="galeno_provincia">
                <input class="controls" type="text" name="galeno_canton" id="galeno_canton">
                <input class="controls" type="text" name="galeno_parroquia" id="galeno_parroquia">
                <input class="controls" type="text" name="galeno_correoelectronico" id="galeno_correoelectronico">
                -->
                <center><input class="botons" type="submit" value="Transferir"></center>
            </section>
        </form>
    </body>
</html>
