<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Medicina.css" rel="stylesheet" type="text/css"/>
        <title>WebApp - Medicina</title>
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
            <div class="div-cont-d-problemas"><h3>Problemas Actuales</h3></div>
        </section>
        
         
        <section class="sec-data-pacient">
            
        </section>
        <section class="sec-data-repre">
            
        </section>
        <section class="sec-data-medicos">
            
        </section>
        
        <section class="sec-data-problemas">
            
        </section>
    </body>
</html>
