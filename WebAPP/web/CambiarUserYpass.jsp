<%-- 
    Document   : CambiarUserYpass
    Created on : 24/08/2021, 14:50:23
    Author     : jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/CambiarUseryPass.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <nav class="nav-tp"></nav>
        </header>
        <div class="div-head-tittle"><h2></h2></div>
        <form>
            <section class="sec-data-pacient">
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-ced"><input type="text" id="txt-ced" class="inp-ced" placeholder="Nombre de usuario" name="nuevoUser"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Nueva contraseña" name="NuevoPass"/></div>
                    </div>
                    <div class="div-row-three"> 
                        <input type="button" id="btn-action" class="btn-accept" value="Guardar"/>
                    </div> 
            </section>
        </form> 
    </body>
</html>
