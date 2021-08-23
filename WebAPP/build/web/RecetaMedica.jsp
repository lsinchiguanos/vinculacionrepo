<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link href="css/Recetamedica.css" rel="stylesheet" type="text/css"/> 
        <title>WebApp - Receta Medica</title>
    </head>
    <body>
        <header>
            <nav class="nav-tp"></nav>
        </header>      
        <div class="div-head-tittle"><h2></h2></div>
        
        <section class="sec-main">
            <form class="form1">
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-ced"><input type="number" id="txt-ced" class="inp-ced" placeholder="Numero de identificacion" name="Identificacion" onkeypress='return validaNumericos(event)'/></div>
                        <div class="div-cont-ced"><input type="number" id="txt-ced" class="inp-ced" placeholder="Nombres del Paciente" name="Identificacion" onkeypress='return validaNumericos(event)'/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Apellidos del Paciente" name="PrimerNombre" onkeypress="return soloLetras(event)"/></div>
                    </div>
                    <div class="div-row-two">
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Nombre del Medico" name="SegundoNombre" onkeypress="return soloLetras(event)"/></div>
                        <div class="div-cont-lname"><input type="date" id="txt-lname" class="inp-lname" placeholder="Segundo Apellido" name="Fechadenacimiento"/></div>
                    </div>
                    <div class="div-row-three">
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Medicamento" name="Fechadenacimiento"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Prescripcion" name="CorreoElectronico"/></div>
                    </div>  
                    <div class="div-row-four"> 
                        <input type="button" id="btn-action" class="btn-accept" value="Guardar"/>
                    </div> 
                </div>
            </form> 
        </section>

        <!--     <div class="div-head-tittle"><h2></h2></div>
             Cedula del paciente
             <input type="text" id="txt-ced" class="inp-ced"/>
             <br><br>
             Nombre del medico
             <input type="text" id="txt-ced" class="inp-ced"/>
             <br><br>
             Fecha
             <input type="text" id="txt-ced" class="inp-ced"/>
             <br><br>
             Nombres completos
             <input type="text" id="txt-ced" class="inp-ced"/>
             <br><br>
             apellidos completos
             <input type="text" id="txt-ced" class="inp-ced"/>
             <br><br>    
             Medicamento: <textarea type="text" id="txt-ced" class="inp-ced"></textarea>
             <br><br>   
             Prescripcion:<textarea type="text" id="txt-ced" class="inp-ced"/></textarea> 
         <br><br>    
         <input type="submit" value="Guardar" />!-->
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
</html>
