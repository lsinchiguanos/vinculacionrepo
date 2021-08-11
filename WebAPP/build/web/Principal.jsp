<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Proyecto VI - Remenber me</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link rel="stylesheet" href="Principal/css/main.css" />
    </head>
    <%
        HttpSession s = request.getSession();
        //variables de session
    %>
    <body class="is-preload">    
        <!-- Encabezado -->
        <header id="header" style="">
            
            <a class="logo" id="ulUserData" href="index.html"></a>
            <nav>
                <a href="cerrar.jsp" style="color:white" >Cerrar sesión</a>
            </nav>
        </header>
        <!-- Nav -->
        <nav id="menu"  style="color:white">
            <ul class="links">
                <li><a href="index.html" >Inicio</a></li>
                <li><a href="ReporteKi.jsp" style="" >Reportes</a></li>
                <li><a href="reportesj.jsp" style="" >Historial</a></li>
                
            </ul>
        </nav>
        <!-- container principal -->
        <section class="wrapper">
            <div class="inner">
                <div class="highlights">

                    <!-- PRIMER MODULO -->
                    <section>
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/departamentos.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#4D8846; font-weight: bold">AGREGAR INFORMACIÓN</h3>
                            </header>
                            <p>Agregar, modificar y eliminar informacion sobre el paciente</p>
                            <a  href="" class="button primary" >Acceder</a>
                        </div>
                    </section>

                    <!-- SEGUNDO MODULO -->
                    <section>
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/REPORTESSS.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#4D8846; font-weight: bold">Reportes</h3>
                            </header>
                            <p>Mostrar informe de las actividades</p>
                            <a href="" class="button primary">Acceder</a>
                        </div>
                    </section>

                    <!-- TERCER MODULO -->
                    <section>
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/HISTORIAL11.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#4D8846; font-weight: bold">Historial</h3>
                            </header>
                            <p>Mostrar la información de las actividades </p>
                            <a href="" class="button primary">Acceder</a>
                        </div>
                    </section>
                   <!-- CUARTO MODULO -->
                    <section>
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/HISTORIAL11.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#4D8846; font-weight: bold">Transferir Paciente</h3>
                            </header>
                            <p>Transferir un paciente a otro departamento</p>
                            <a href="TransferirPaciente.jsp" class="button primary">Acceder</a>
                        </div>
                    </section>
                </div>
            </div>
            
        </section>

        <!-- Scripts -->
        <script src="Principal/js/jquery.min.js"></script>
        <script src="Principal/js/browser.min.js"></script>
        <script src="Principal/js/breakpoints.min.js"></script>
        <script src="Principal/js/util.js"></script>
        <script src="Principal/js/main.js"></script>
    </body>
    
</html>