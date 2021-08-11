
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TRANSFERIR PACIENTE</title>
        <link rel="stylesheet" href="Principal/css/main.css" />
        <link rel="stylesheet" href="css/CSS_Transferir.css">
    </head>
    <body class="is-preload">
        <header id="header" style="">

            <a class id="ulUserData" href="index.html"></a>
            <nav>
                <a href="cerrar.jsp" style="color:white" >Cerrar sesión</a>
            </nav>
        </header>
        <section class="form-register">
            <h4>Formulario Transferir Paciente</h4>
            <input class="controls" type="text" name="cedula" id="Cedula" placeholder="Ingrese la cedula">
            <input class="controls" type="text" name="nombres" id="nombres" placeholder="Nombre">
            <input class="controls" type="text" name="apellidos" id="apellidos" placeholder="Apellido">
            <input class="controls" type="text" name="edad" id="edad" placeholder="Edad">
            Departamento que transfiere:
            <select name="TransDepartamento">
                <option>AQUI VA EL DEPARTAMENTO CON EL QUE INICIA SESION</option>
            </select>
            Departamento a transferir:
            <select name="TransDepartamento">
                <option>.....</option>
                <option>D1</option>
                <option>D2</option>
                <option>D3</option>
                <option>D4</option>
                <option>D5</option>
                <option>D6</option>
            </select>
            <br>
            <input class="controls" type="text" name="CodigoDepartamento" id="correo" placeholder="codigo">            
            OBSERVACION: 
            <textarea></textarea>
            <center><input class="botons" type="submit" value="Transferir"></center>
        </section>

    </body>
</html>
