
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reportes</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="css/reportes.css" rel="stylesheet" type="text/css"/>
        <link href="css/animacionprincipal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            HttpSession s = request.getSession();
            //variables de session
%>
        <label id="usuario" style="display:none;"><%= s.getAttribute("galeno_user11")%> </label> 
        <label id="nombre" style="display:none;"></label> 

        <header id="header" style=" background: #007653 !important;">
         
                <a class="logo" href="Principal.jsp">
                    <img style="margin-top:8px"src="img/circled_left_30px.png" title="Ir a la página anterior" alt="logo">
                </a>
                <a class="logo" id="ulUserData" href="Principal.jsp"></a>
              <nav class="nav-tp"> </nav>
        </header>

        <div class="div-head-tittle"><h2></h2></div>
    
        <section class="wrapper">
            <div class="inner">
                <div class="highlights">
                    <!-- PRIMER MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="svg/doctor.svg" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">PACIENTES ATENDIDOS</h3>

                            </header>
                            <p>Descargar en PDF las estadísticas de los pacientes atendidos</p>
                            <a href="formularioReporteHistorialPaciente.jsp" class="button primary" style=" background: #007653 !important;" href="" >Acceder</a>
                        </div>
                    </section>

                    <!-- SEGUNDO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="svg/receta.svg" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">Recetarios</h3>
                            </header>
                            <p>Descargar en PDF las recetas medicas</p>
                            <a href="formularioReporteRecetaMedica.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </body>
</html>