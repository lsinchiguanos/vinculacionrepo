<%@page import="java.sql.ResultSet"%>
<%@page import="BD.conexion"%>
<%@page import="BD.conexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link href="css/clave.css" rel="stylesheet" type="text/css"/>  
        <link rel="stylesheet" href="Principal/css/main.css" />
        <link rel="stylesheet" href="css/CSS_Transferir.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>WebApp - Recuperacion de clave</title>
    </head>
    <body>
        <header>
            <nav class="nav-tp"></nav>
        </header>      

        <div class="div-head-tittle"><h2></h2></div>

        <section class="sec-main">
            <form>
                 <div class="div-cont-main">
                <center><h4>Cambiar Clave</h4></center>
                <h4> </h4>
                <h6>La clave debe cumplir con los siguientes parámetros: </h6>
                <br>
                <br> <h8>Al menos una letra</h8>
                <br><h8>Al menos una letra en mayúscula y una letra en minúscula</h8>
                <br><h8>Al menos un número</h8>
                <br><h8>Al menos ha de contener 8 caracteres</h8>
                <br><h8>La nueva clave no debe ser igual a la anterior </h8>
                <br><h8>La nueva clave debe ser igual a repetir clave. </h8>

                <br> INGRESAR NUEVA CLAVE: 
                <div class="div-cont-ced"> <input class="div-cont-lname" type="password" name="txtPassword" id="txtPassword" required=""></div>

                <div class="input-group-append">
                    <button id="show_password" class="btn btn-primary" type="button" onclick="mostrarPassword()"> <span class="fa fa-eye-slash icon"></span> </button>
                </div>
                REPETIR LA NUEVA CLAVE:
                <div class="div-cont-ced"> 
                    <input class="div-cont-lname" type="password" name="txtPassword1" id="txtPassword1" required=""></div>
                <div class="input-group-append">
                    <button id="show_password" class="btn btn-primary" type="button" onclick="mostrarPassword1()"> <span class="fa fa-eye-slash icon"></span> </button>
                </div>
                <center>
                    <input type="button" id="btn-action" class="btn-accept" value="Cambiar clave"/>
                </center>

                </div>
            </form>
        </section>
        <script type="text/javascript">
            function mostrarPassword() {
                var cambio = document.getElementById("txtPassword");
                if (cambio.type == "password") {
                    cambio.type = "text";
                    $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
                } else {
                    cambio.type = "password";
                    $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
                }
            }
            function mostrarPassword1() {
                var cambio = document.getElementById("txtPassword1");
                if (cambio.type == "password") {
                    cambio.type = "text";
                    $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
                } else {
                    cambio.type = "password";
                    $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
                }
            }
            function valida(e) {
                e.preventDefault();

                var num1 = document.getElementById('txtPassword').value;
                var num2 = document.getElementById('txtPassword1').value;

                if (num1 === num2) {
                    alert("Actualizado correctamente");
                } else {
                    alert("No son iguales las contraselas");
                    document.getElementById("txtPassword1").value = "";
                }
            }
            document.getElementById('form').addEventListener('submit', valida);
            $(document).ready(function () {
                //CheckBox mostrar contraseña
                $('#ShowPassword').click(function () {
                    $('#Password').attr('type', $(this).is(':checked') ? 'text' : 'password');
                });
            });
        </script>
        <%
            PreparedStatement pst;
            conexion cn = new conexion();
            ResultSet rs;
            PreparedStatement ps;
            String dni, mnom1;
            dni = request.getParameter("txtPassword");
            mnom1 = request.getParameter("txtPassword1");
            if (dni != null) {
                if (dni.equals(mnom1)) {
                    ps = cn.getConecction().prepareStatement("update galeno set galeno_pass=md5('" + dni + "') where galeno_user='" + session.getAttribute("galeno_user11") + "'");
                    ps.executeUpdate();
                    response.sendRedirect("index.jsp");
                }
            }
        %>
    </body>
    <footer></footer>
    <script src="js/JQuery.js" type="text/javascript"></script>
    <script src="js/Opciones.js" type="text/javascript"></script> 
    <script src="js/AltoRestante.js" type="text/javascript"></script>  
</html>
