
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="css/clave.css" rel="stylesheet" type="text/css"/>   
       <link rel="stylesheet" href=" https://sga.uteq.edu.ec/static/css/bootstrap-modal.css?1.0.0">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/bootstrap-responsive.css?1.0.0">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/bootstrap-timepicker.css?1.0.0">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/bootstrap.min.css?1.0.1">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/datepicker.css?1.0.0">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/font-awesome.css?1.0.1">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/font-awesome.min.css?1.0.1">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/jquery.dataTables.css?1.0.0">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/jquery.fancybox.css?v=1.0.0">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/jquery.flexbox.css?1.0.0">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/smoke.css?1.0.2">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/select2.css?v=1.0.0">
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/stylesbs.css?1.0.6"> 
      <link rel="stylesheet" href="https://sga.uteq.edu.ec/static/css/validationEngine.jquery.css?v=1.0.0"> 
        <title>JSP Page</title>
    </head>
    <body data-spy="scroll" data-target=".subnav" data-offset="50" '="">
        <header>
            <nav class="nav-tp"></nav>
        </header>      

        <div class="div-head-tittle"><h2></h2></div>

        <div id="content">
            <div class="container-fluid table-responsive">

                <div class="row-fluid">
                    <div class="span12">

                        <div class="form-l">

                            <div class="row-fluid no-marging-bottom" style="margin-bottom: 3px;">
                                <div class="well" style="margin-bottom: 3px;padding: 10px;">
                                    <h4>Cambio de clave</h4>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="well">
                                    <form id="formulario" formtype="form-horizontal" style="width: 100%; margin-bottom: 0" onsubmit="return false">
                                        <div>

                                            <div id="pswd_info">
                                                <h6>La clave debe cumplir con los siguientes parámetros:</h6>
                                                <ul>
                                                    <li id="letter">Al menos <strong>una letra</strong></li>
                                                    <li id="capital">Al menos <strong>una letra en mayúscula y una letra en minúscula</strong></li>
                                                    <li id="number">Al menos <strong>un número</strong></li>
                                                    <li id="length">Al menos ha de contener <strong>8 caracteres</strong></li>
                                                    <li id="igualdad">La nueva clave <strong>no debe ser igual</strong> a la anterior</li>
                                                    <li id="nuevarepetir">La nueva clave <strong>debe ser igual</strong> a repetir clave.</li>
                                                </ul>
                                            </div>
                                            <p></p>
                                            <input type="hidden" name="action" value="changepass">

                                        </div>
                                        <div class="row-fluid">
                                            <input type="hidden" name="csrfmiddlewaretoken" value="U23aEpGJgOklLPpiB80EfR4GnyKMOpiutoXDZxOL8SjYLJHRybm0Z3lNMIMnwRTz">


                                            <input type="hidden" name="csrfmiddlewaretoken" value="U23aEpGJgOklLPpiB80EfR4GnyKMOpiutoXDZxOL8SjYLJHRybm0Z3lNMIMnwRTz">






                                            <div id="fieldset_anterior" class="control-group cont-100" style="padding: 1%; min-height:45px; float: left;  width: 100%">
                                                <div class="control-label" style="line-height: 20px; text-align: right; padding-right: 10px; float: left; width: 150px;">
                                                    Clave actual
                                                </div>

                                                <div class="controls cont-div-100">

                                                    <input id="id_anterior" name="anterior" type="password" required="" class="validate[required]" style="text-transform: none;">

                                                    <p class="help-text" style="font-size: 10px; margin: 0; padding: 0; line-height: 1.1;" alert=""></p>
                                                </div>

                                            </div>


                                            <div id="fieldset_nueva" class="control-group cont-100" style="padding: 1%; min-height:45px; float: left;  width: 100%">
                                                <div class="control-label" style="line-height: 20px; text-align: right; padding-right: 10px; float: left; width: 150px;">
                                                    Nueva clave
                                                </div>

                                                <div class="controls cont-div-100">

                                                    <input class="validarclave validate[required]" id="id_nueva" name="nueva" type="password" required="" style="text-transform: none;">

                                                    <p class="help-text" style="font-size: 10px; margin: 0; padding: 0; line-height: 1.1;" alert=""></p>
                                                </div>

                                            </div>


                                            <div id="fieldset_repetir" class="control-group cont-100" style="padding: 1%; min-height:45px; float: left;  width: 100%">
                                                <div class="control-label" style="line-height: 20px; text-align: right; padding-right: 10px; float: left; width: 150px;">
                                                    Repetir clave
                                                </div>

                                                <div class="controls cont-div-100">

                                                    <input class="validarclave validate[required,equals[id_nueva]]" id="id_repetir" name="repetir" type="password" required="" style="text-transform: none;">

                                                    <p class="help-text" style="font-size: 10px; margin: 0; padding: 0; line-height: 1.1;" alert=""></p>
                                                </div>

                                            </div>



                                        </div></form>
                                    <div class="row-fluid">


                                    </div>
                                    <div class="row-fluid">
                                        <div style="text-align: right;">



                                            <a href="javascript:;" class="btn btn-success btn-form" id="formbutton">Guardar</a>



                                            <a href="/" class="btn btn-danger bloqueo_pantalla">Cancelar</a>
                                        </div>
                                    </div> 

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row-fluid">


                </div>

            </div>
        </div> 
        <div class="modal fade static" id="waitpanel" style="display: none;">
            <div class="modal-header">
                <h4 id="waitpaneltitle"></h4>
            </div>
            <div class="modal-body">
                <p id="waitpanelbody"></p>
            </div>
        </div>

        <div id="csrf_tokendiv" style="display: none;">U23aEpGJgOklLPpiB80EfR4GnyKMOpiutoXDZxOL8SjYLJHRybm0Z3lNMIMnwRTz</div>




    </body>
</html>
