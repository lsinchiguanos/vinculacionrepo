<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Principal/css/main.css" />
        <link rel="stylesheet" href="css/CSS_Transferir.css">
        <title>Terapia Ocupacional</title>
    </head>
    <body>
        <header id="header" style="">
            <a class id="ulUserData" href="index.html"></a>
            <nav>
                <a href="cerrar.jsp" style="color:white" >Cerrar sesión</a>
            </nav>
        </header>
        <section  class="form-register">
            <center><h4>Datos Paciente</h4></center>
            <input class="controls" type="text" name="cedula" id="Cedula" placeholder="Ingrese la cedula">
            <input class="controls" type="text" name="nombres" id="nombres" placeholder="Nombre">
            <input class="controls" type="text" name="apellidos" id="apellidos" placeholder="Apellido">
            <input class="controls" type="text" name="edad" id="edad" placeholder="Edad">
            GÉNERO: 
            <select name="genero" id="genero">
                <option>.....</option>
                <option>Masculino</option>
                <option>Femenino</option>
            </select>
            <BR>
            <input class="controls" type="text" name="patología" id="patología" placeholder="patología">
            <input class="controls" type="text" name="Frecuencia" id="Frecuencia" placeholder="Frecuencia">
            <input class="controls" type="text" name="costo" id="costo" placeholder="costo">
            <input class="controls" type="text" name="AyudaSocial" id="AyudaSocial" placeholder="AyudaSocial">
            <input class="controls" type="text" name="LogrosAlcanzados" id="LogrosAlcanzados" placeholder="LogrosAlcanzados">
            <center><input class="botons" type="submit" value="Transferir"></center>
        </section>
    </body>
</html>
