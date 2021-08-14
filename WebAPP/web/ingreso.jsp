<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link href="css/Ingresos.css" rel="stylesheet" type="text/css"/>
        <title>WebApp - Ingresos</title>
    </head>
    <body>
        <header>
            <nav class="nav-tp"></nav>
        </header>      

        <div class="div-head-tittle"><h2></h2></div>

        <section class="sec-input-data">
            <form>
                <div class="div-cont-date"><input type="date" id="date" class="inp-date"/></div>
                <div class="div-cont-ced"><input type="text" id="txt-ced" class="inp-ced" placeholder="Cédula"/></div>            
                <div class="div-cont-search"><input type="button" id="btn-action" class="inp-search" value="Buscar"/></div>
            </form>
        </section>

        <section class="sec-options">
            <div class="div-cont-pacient"><h3>Datos personales del paciente</h3></div>
            <div class="div-cont-repre"><h3>Datos del tutor</h3></div> 
            <div class="div-cont-d-medicos"><h3>Datos médicos generales</h3></div> 
        </section>


        <section class="sec-data-pacient">
            <form>
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-ced"><input type="number" id="txt-ced" class="inp-ced" placeholder="Cédula"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Nombre"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Nombre"/></div>
                    </div>
                    <div class="div-row-two">
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Apellido"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Apellido"/></div>
                        <div class="div-cont-edad"><input type="number" id="txt-edad" class="inp-edad" placeholder="Fecha de nacimiento"/></div> 
                    </div>
                    <div class="div-row-three">
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Correo Electronico"/></div>
                        <div class="div-cont-lname"><input type="number" id="txt-lname" class="inp-lname" placeholder="Telefono"/></div>
                        <div class="div-cont-edad"><input type="number" id="txt-edad" class="inp-edad" placeholder="Celular"/></div> 

                    </div>
                    <div class="div-row-four">
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Provincia"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Canton"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Direccion"/></div>
                         </div>
                    <div class="div-row-five">
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Ocupacion"/></div>
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                                <option>Seleccione el estado civil</option>
                                <option>Soltero</option><option>Casado</option><option>Union libre</option>
                                <option>Viudo</option><option>Divorciado</option>></select></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Nacionalidad"/></div>
                        <input type="button" id="btn-action" class="btn-accept" value="Guardar"/></div>
                </div> 
            </form> 
        </section>
        <section class="sec-data-repre">
            <form>
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-ced"><input type="number" id="txt-ced" class="inp-ced" placeholder="Cédula"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Nombre"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Nombre"/></div>
                    </div>
                    <div class="div-row-two">
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Apellido"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Apellido"/></div>
                        <div class="div-cont-edad"><input type="number" id="txt-edad" class="inp-edad" placeholder="Fecha de nacimiento"/></div> 
                    </div>
                    <div class="div-row-three">
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Correo Electronico"/></div>
                        <div class="div-cont-lname"><input type="number" id="txt-lname" class="inp-lname" placeholder="Telefono"/></div>
                        <div class="div-cont-edad"><input type="number" id="txt-edad" class="inp-edad" placeholder="Celular"/></div> 

                    </div>
                    <div class="div-row-four">
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Provincia"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Canton"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Direccion"/></div>
                      </div>
                      <div class="div-row-five">
                            <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Ocupacion"/></div>
                            <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                                    <option>Seleccione el estado civil</option>
                                    <option>Soltero</option><option>Casado</option><option>Union libre</option>
                                    <option>Viudo</option><option>Divorciado</option>></select></div>
                            <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Nacionalidad"/></div>
                            <input type="button" id="btn-action" class="btn-accept" value="Guardar"/></div>
                </div>
            </form> 
        </section>
        <section class="sec-data-medicos">
            <form>
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-ced"><input type="number" id="txt-ced" class="inp-ced" placeholder="Estatura"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Peso"/></div>
                       </div> 
                        <div class="div-row-two">   
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Tipo de Sangre"/></div>
                       <input type="button" id="btn-action" class="btn-accept" value="Guardar"/></div>
                    </div>   
            </form> 
        </section>

    </body>
    <footer></footer>
    <script src="js/JQuery.js" type="text/javascript"></script>
    <script src="js/Opciones.js" type="text/javascript"></script> 
    <script src="js/AltoRestante.js" type="text/javascript"></script>  
</html>
