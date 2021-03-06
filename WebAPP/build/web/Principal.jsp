<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>DIRECCION DE DESARROLLO SOCIAL</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link rel="stylesheet" href="Principal/css/main.css" />
        <link href="css/animacionprincipal.css" rel="stylesheet" type="text/css"/>
    </head>

    <body class="is-preload">    
       <%
            HttpSession s = request.getSession();
            //variables de session
        %>    
        <label id="usuario" style="display:none;"><%= s.getAttribute("galeno_user11")%> </label> 
        <label id="nombre"></label>

        <header id="header" style="">

            <header id="header" style=" background: #007653 !important;">
                <a class="logo" href="index.jsp">
                </a>
                <a class="logo" id="ulUserData" href="index.html"></a>
                <nav>
                    <a href="cambioclave.jsp" style="color:white" >Cambiar clave</a>
                    <a href="cerrar.jsp" style="color:white" >Cerrar sesión</a>
                </nav>
            </header>
        </header>
        <!-- container principal -->
        <section class="wrapper">
            <div class="inner">
                <div class="highlights">
                    <!-- PRIMER MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/icons8_workstation_96px.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">AGREGAR CONSULTA MEDICA Y RECETA</h3>

                            </header>
                            <p>Agregar consulta sobre el  paciente y receta medica</p>
                            <a id="PaginaMedi" class="button primary" style=" background: #007653 !important;" >Agregar consulta o receta</a>
                        </div>
                    </section>

                    <!-- SEGUNDO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/icons8_account_96px.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">Reportes</h3>
                            </header>
                            <p>Descargar en PDF las actividades o recetas medicas de los pacientes</p>
                            <a href="Reportes.jsp" class="button primary" style=" background: #007653 !important;">Ver reportes</a>
                        </div>
                    </section>

                    <!-- TERCER MODULO -->                 
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/icons8_accounting_96px.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Historial</h3>
                            </header>
                            <p>Mostrar la información de las actividades de los pacientes</p>
                            <a href="HistorialPaciente.jsp" class="button primary"style=" background: #007653 !important;">Ver historial</a>
                        </div>
                    </section>

                    <!-- CUARTO MODULO -->
                    <!-- <section class="animadoagregarinformacion">
                         <div class="content">
                             <header>
                                 <a href="">
                                     <img alt="" src="img/icons8_cv_96px.png">
                                     <span class="label"></span></a>
                                 <h3 style="color:#007653; font-weight: bold">Transferir Paciente</h3>
                             </header>
                             <p>Transferir un paciente a otro departamento</p>
                             <a href="TransferirPaciente.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
                         </div>
                     </section>-->
                    <!-- Quinto MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/icons8_profile_96px.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Actualizar datos personales medico</h3>
                            </header>
                            <p>Podrá actualizar sus datos personales, en caso de alguna actualización</p>
                            <a href="ActualizarDatosPersonalesMedicos.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
                        </div>
                    </section>
                    <!-- Sexto MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="svg/medico.svg" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Ingresar Paciente</h3>
                            </header>
                            <p>Ingresar datos personales por primera vez del paciente</p>
                            <a href="ingreso.jsp" class="button primary" style=" background: #007653 !important;">Ingresar Paciente</a>
                            <br>
                            <a href="Actualizardatospaciente.jsp" class="button primary" style=" background: #007653 !important; margin-top: 12px;">Actualizar paciente</a>
                        </div>
                    </section>
                    <!-- SEPTIMO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="svg/resultados-de-los-examenes.svg" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">EXAMENES</h3>
                            </header>
                            <p>Subir o actualizar examenes del paciente</p>
                            <a href="ListarPacientes.jsp" class="button primary" style=" background: #007653 !important;">Subir examenes</a>
                            <br>
                            <a href="ListarPacientesGeneral.jsp" class="button primary" style=" background: #007653 !important; margin-top: 12px;">Actualizar examenes</a>
                        </div>
                    </section>
                </div>
            </div>
        </section>
        <!-- Scripts -->
        <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="Principal/js/jquery.min.js"></script>
        <script src="Principal/js/browser.min.js"></script>
        <script src="Principal/js/breakpoints.min.js"></script>
        <script src="Principal/js/util.js"></script>
        <script src="Principal/js/main.js"></script>
        <script src="js/animacion.js" type="text/javascript"></script>


    </body>

</html>