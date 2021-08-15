<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link href="css/Medicina.css" rel="stylesheet" type="text/css"/>
        <title>WebApp - Medicina General</title>
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
            <div class="div-cont-repre"><h3>Datos medicos generales</h3></div> 
            <div class="div-cont-d-medicos"><h3>Antecedentes</h3></div> 
        </section>


        <section class="sec-data-pacient">
            <form>
                <div class="div-cont-main">

                    <table border="1">
                        <tr>
                            <td>ID</td>
                            <td>Numero de Identificacion</td>
                            <td>Nombres</td>
                            <td>Apellidos</td>
                            <td>Telefono Convencional</td>
                            <td>Celular</td>
                            <td>Correo Electronico</td>
                            <td>Provincia</td>
                            <td>Canton</td>
                            <td>Parroquia</td>
                            <td>Direccion</td>
                            <td>Fecha de Nacimiento</td> 
                        </tr> 
                    </table>
                </div> 
            </form> 
        </section>
        
        <section class="sec-data-repre">
            <form>
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-ced"><input type="number" id="txt-ced" class="inp-ced" placeholder="Estatura"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Peso"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Tipo de Sangre"/></div>
                    </div> 
                    <div class="div-row-two">   
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="P/C"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="P/T"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="P/A"/></div>
                    </div>
                    <div class="div-row-three"> 
                        <input type="button" id="btn-action" class="btn-accept" value="Guardar"/>
                         <input type="button" id="btn-action" class="btn-accept" value="Cancelar"/>
                    </div>
                </div>   
            </form> 
        </section>

        <section class="sec-data-medicos">
            <form>
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Antecedentes alérgicos"/></div>
                          <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Antecedentes personales"/></div>
                    </div> 
                    <div class="div-row-two">   
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Antecedentes familiares"/></div>
                          <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Antecedentes quirugicos"/></div>
                   
                    </div>
                     <div class="div-row-three"> 
                        <input type="button" id="btn-action" class="btn-accept" value="Guardar"/>
                         <input type="button" id="btn-action" class="btn-accept" value="Cancelar"/>
                    </div>
                    
                        
                </div>   
            </form> 
        </section>

    </body>
    <footer></footer>
    <script src="js/JQuery.js" type="text/javascript"></script>
    <script src="js/Opciones.js" type="text/javascript"></script>  
</html>
