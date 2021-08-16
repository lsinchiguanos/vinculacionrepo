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
                <%--  <div class="div-cont-date"><input type="date" id="date" class="inp-date"/></div>--%>
                <div class="div-cont-ced"><input type="text" id="txt-ced" class="inp-ced" placeholder="Numero de identificacion"/></div>            
                <div class="div-cont-search"><input type="button" id="btn-action" class="inp-search" value="Buscar"/></div>
            </form>
        </section>

        <%-- <section class="sec-options">
            <div class="div-cont-pacient"><h3>Datos personales del paciente</h3></div>
        <%--  <div class="div-cont-repre"><h3>Datos del tutor</h3></div> --%>
        <%--   <div class="div-cont-d-medicos"><h3>Datos médicos generales</h3></div> 
    </section>--%>
        <section class="sec-data-pacient">
            <form>
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                                <option>Tipo de identificacion</option>
                                <option>Cedula</option><option>Pasaporte</option></select></div>

                        <div class="div-cont-ced"><input type="number" id="txt-ced" class="inp-ced" placeholder="Numero de identificacion" name="Identificacion" onkeypress='return validaNumericos(event)'/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Nombre" name="PrimerNombre" onkeypress="return soloLetras(event)"/></div>

                    </div>
                    <div class="div-row-two">
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Nombre" name="SegundoNombre" onkeypress="return soloLetras(event)"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Apellido" name="PrimerApellido" onkeypress="return soloLetras(event)"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Apellido" name="SegundoApellido" onkeypress="return soloLetras(event)"/></div>

                    </div>
                    <div class="div-row-three">
                        <div class="div-cont-lname"><input type="date" id="txt-lname" class="inp-lname" placeholder="Segundo Apellido" name="Fechadenacimiento"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Correo Electronico" name="CorreoElectronico"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Telefono Convencional" name="convencional" onkeypress='return validaNumericos(event)'/></div>
                    </div>
                    <div class="div-row-four">
                        <div class="div-cont-edad"><input type="text" id="txt-edad" class="inp-edad" placeholder="Celular" name="Celular" onkeypress='return validaNumericos(event)'/></div> 
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Provincia" name="Provincia" onkeypress="return soloLetras(event)"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Canton" name="canton" onkeypress="return soloLetras(event)"/></div>
                    </div>
                    <div class="div-row-five">

                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Direccion" name="Direccion"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Parroquia" name="parroquia" onkeypress="return soloLetras(event)"/></div>
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf" name="genero">   
                                <option>Seleccione genero</option>
                                <option>Masculino</option>
                                <option>Femenino</option>
                            </select></div>
                    </div>

                    <div class="div-row-six">
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                                <option>Seleccione el estado civil</option>
                                <option>Soltero</option>
                                <option>Casado</option>
                                <option>Union libre</option>
                                <option>Viudo</option>
                                <option>Divorciado</option>
                            </select></div>
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                                <option>Recibe Ayuda Social</option>
                                <option>Si</option>
                                <option>No</option>
                            </select></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Nacionalidad" name="nacionalidad" onkeypress="return soloLetras(event)"/></div>
                    </div>                 

                    <div class="div-row-seven">
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Discapacidad"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Tipo de sangre"/> </div>
                        <input type="button" id="btn-action" class="btn-accept" value="Guardar"/></div>
                    </div> 
                </div>
            </form> 
        </section>
        <script>
            function validaNumericos(event) {
                if (event.charCode >= 48 && event.charCode <= 57) {
                    return true;
                }
                return false;
            }
            function soloLetras(e) {
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
                especiales = [8, 37, 39, 46];

                tecla_especial = false
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }

                if (letras.indexOf(tecla) == -1 && !tecla_especial)
                    return false;
            }
        </script>
    </body>

    <footer></footer>
    <script src="js/JQuery.js" type="text/javascript"></script>
    <script src="js/Opciones.js" type="text/javascript"></script> 
    <script src="js/AltoRestante.js" type="text/javascript"></script>  
</html>
