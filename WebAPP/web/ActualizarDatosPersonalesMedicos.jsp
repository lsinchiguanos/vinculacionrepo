<%-- 
    Document   : ActualizarDatosPersonalesMedicos
    Created on : 12/08/2021, 9:02:17
    Author     : jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <section  class="form-register">
            <center><h4>ACTUALIZAR DATOS PERSONALES</h4></center>
            CEDULA: 
            <input class="controls" type="text" name="cedula" id="Cedula" required="">
            PRIMER NOMBRE: 
            <input class="controls" type="text" name="primerNombre" id="nombres1">
            SEGUNDO NOMBRE:
            <input class="controls" type="text" name="segundoNombre" id="nombres2">
            TELEFONO O CELULAR:
            <input class="controls" type="text" name="telefono" id="telefono">
            DIRECCION:
            <input class="controls" type="text" name="direccion" id="direccion" >
            PROVINCIA:
            <input class="controls" type="text" name="provincia" id="provincia">
            CANTON:
            <input class="controls" type="text" name="canton" id="canton">
            PARROQUIA:
            <input class="controls" type="text" name="parroquia" id="parroquia">
            EMAIL:
            <input class="controls" type="text" name="correoElectronico" id="correoElectronico">
            <center><input class="botons" type="submit" value="Actualizar datos"></center>
        </section>
    </body>
</html>
