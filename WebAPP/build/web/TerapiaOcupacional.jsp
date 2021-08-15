<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/terapiaocupacional.css" rel="stylesheet" type="text/css"/>  
        <title>WebApp - Terapia Ocupacional</title>
    </head>
    <body>
        <header>
            <nav class="nav-tp">
                <a href="cerrar.jsp" style="color:white" >Cerrar sesión</a>
            </nav>
        </header>      

        <div class="div-head-tittle"><h2></h2></div>

        <section class="sec-main">
            <form>
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-ced"><input type="text" id="txt-ced" class="inp-ced" placeholder="Numero de identificacion"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Nombre"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Apellido"/></div>
                    </div>
                    <div class="div-row-two">
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                                <option>Genero</option>
                                <option>Masculino</option><option>Femenino</option></select></div>

                        <div class="div-cont-edad"><input type="number" id="txt-edad" class="inp-edad" placeholder="Edad"/></div>
                        <div class="div-cont-cod"><input type="text" id="txt-cod" class="inp-cod" placeholder="Patologia"/></div>

                    </div>
                    <div class="div-row-three">
                        <div class="div-cont-edad"><input type="number" id="txt-edad" class="inp-edad" placeholder="Frecuencia"/></div>
                        <div class="div-cont-cod"><input type="number" id="txt-cod" class="inp-cod" placeholder="Costo"/></div>
                        <div class="div-cont-cod"><input type="text" id="txt-cod" class="inp-cod" placeholder="Ayuda Social"/></div>
                    </div>
                    <div class="div-row-four">
                         <div class="div-observation"><textarea class="txt-ar-ob" placeholder="Logros Alcanzados"></textarea>
                             
                             <input type="button" id="btn-action" class="btn-accept" value="Guardar"/>
                          <input type="button" id="btn-action" class="btn-accept" value="Cancelar"/>
                         </div>
                       
                    </div>

                </div>
            </form>
        </section>


    </body> 
    <script src="js/JQuery.js" type="text/javascript"></script>
    <script src="js/AltoRestante.js" type="text/javascript"></script> 
</html>
