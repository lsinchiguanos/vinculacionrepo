<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <a href="../src/java/DAO/Buscador.java"></a>
    <link href="css/Medicina.css" rel="stylesheet" type="text/css"/>
    <title>WebApp - Medicina General</title>
</head>
<body>
    <header id="header" style=" background: #007653 !important;">
        <a class="logo" href="Principal.jsp">
            <img style="margin-top:8px"src="img/circled_left_30px.png" title="Ir a la página anterior" alt="logo">
        </a>

        <nav class="nav-tp"></nav>
    </header>     
    <div class="div-head-tittle"><h2></h2></div>


    <!-- 
<section class="sec-options">
    <div class="div-cont-pacient"><h3>Datos personales del paciente</h3></div>
</section> !-->

    <form id="form1" action="/WebAPP/AddMedicinaGeneral"  autocomplete="off">
        <section class="sec-main">
            <div class="div-cont-main">


                <div class="div-cont-ced">
                    <input type="button" id="btn-actionb" class="inp-search" value="Buscar"/>
                    <input type="text" id="txt-cede" class="inp-ced" placeholder="Cédula" name="cedula"/>
                </div>            
                <!--<div class="div-cont-search"></div>  EMERGENCIA DE BORDE style='margin-top: -40px !important;' -->
                <hr /> 
                <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                    <thead >
                        <tr>
                            <th>Numero de identificacion</th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> <div class="div-cont-ced" style='margin-top: -40px !important;'><input type="text" id="txt-cedi" class="inp-ced" placeholder="Numero de identificacion" name="Identificacion" onkeypress='return validaNumericos(event)' disabled="true"/></div> </td>
                            <td> <div class="div-cont-name"  ><input type="text" id="txt-namen" class="inp-name" placeholder="Nombres" name="Nombres" onkeypress="return soloLetras(event)"disabled="true"/></div> </td>
                            <td> <div class="div-cont-lname"  ><input type="text" id="txt-lnamea" class="inp-lname" placeholder="Apellidos" name="Apellidos" onkeypress="return soloLetras(event)"disabled="true"/></div> </td>
                        </tr>
                    <thead>
                        <tr>
                            <td>Discapacidad</td>
                            <td>Telefono convencional</td>
                            <td>Celular</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> <div class="div-cont-name"><input type="text" id="txt-namef" class="inp-name" placeholder="Discapacidad" name="Discapacidad"disabled="true"/></div> </td>
                            <td> <div class="div-cont-lname"><input type="text" id="txt-lnamet" class="inp-lname" placeholder="Telefono Convencional" name="convencional" onkeypress='return validaNumericos(event)'disabled="true"/></div> </td>
                            <td> <div class="div-cont-edad"><input type="text" id="txt-cel" class="inp-edad" placeholder="Celular" name="Celular" onkeypress='return validaNumericos(event)'disabled="true"/></div>  </td>
                        </tr>
                    <thead>
                        <tr>
                            <td>Provincia</td>
                            <td>Direccion</td>
                            <td>Genero</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>  <div class="div-cont-lname"><input type="text" id="txt-provin" class="inp-lname" placeholder="Provincia" name="Provincia" onkeypress="return soloLetras(event)"disabled="true"/></div>  </td>
                            <td> <div class="div-cont-lname"><input type="text" id="txt-direccion" class="inp-lname" placeholder="Direccion" name="Direccion"disabled="true"/></div> </td>
                            <td> <div class="div-cont-lname"><input type="text" id="txt-genero" class="inp-lname" placeholder="Genero" name="Genero" onkeypress="return soloLetras(event)"disabled="true"/></div> </td>
                        </tr> 
                    <thead>
                        <tr>
                            <th>Ayuda economica</th>
                            <th>Nacionalidad</th>
                            <th>Correo Electronico</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr> 
                            <td><div class="div-cont-lname"><input type="text" id="txt-ayudaeconomica" class="inp-lname" placeholder="Ayuda economica" name="Ayuda economica" onkeypress="return soloLetras(event)"disabled="true"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-nacionalidad" class="inp-lname" placeholder="Nacionalidad" name="Nacionalidad" onkeypress="return soloLetras(event)"disabled="true"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-tiposangre" class="inp-lname" placeholder="Correo Electronico" name="Correo Electronico" onkeypress="return soloLetras(event)"disabled="true"/></div></td>
                        </tr>
                    </tbody>
                </table>
                <hr />

                <%-- <table style="width: 100%">
                    <thead style="text-align: center; margin-left: -5%">
                        <tr>
                            <th>Ayuda economica</th>
                            <th>Nacionalidad</th>
                            <th>Correo Electronico</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><input type="text" id="txt-ayudaeconomica" class="inp-lname" placeholder="Ayuda economica" name="Ayuda economica" onkeypress="return soloLetras(event)"disabled="true"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-nacionalidad" class="inp-lname" placeholder="Nacionalidad" name="Nacionalidad" onkeypress="return soloLetras(event)"disabled="true"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-tiposangre" class="inp-lname" placeholder="Correo Electronico" name="Correo Electronico" onkeypress="return soloLetras(event)"disabled="true"/></div></td>
                        </tr>

                    </tbody>
</table>  --%>
                <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                    <thead>
                        <tr>
                            <th>Estatura</th>
                            <th>Peso</th>
                            <th>Tipo de sangre</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-ced" style='margin-top: -40px !important;'><input type="number" id="txt-estatura" class="inp-ced" placeholder="Estatura" name="Estatura"/></div></td>
                            <td><div class="div-cont-name" ><input type="text" id="txt-peso" class="inp-name" placeholder="Peso" name="peso"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-tiposangree" class="inp-lname" placeholder="Tipo de Sangre" name="sangre"/></div></td>
                        </tr>
                    <thead>
                        <tr>
                            <td>P/C</td>
                            <td>P/T</td>
                            <td>P/A</td>
                        </tr>
                    </thead>
                    <tr>
                        <td><div class="div-cont-lname"><input type="text" id="txt-pc" class="inp-lname" placeholder="P/C" name="pc"/></div></td>
                        <td><div class="div-cont-lname"><input type="text" id="txt-pt" class="inp-lname" placeholder="P/T" name="pt"/></div></td>
                        <td><div class="div-cont-lname"><input type="text" id="txt-pa" class="inp-lname" placeholder="P/A" name="pa"/></div></td>
                    </tr>

                    </tbody>
                </table>
                <hr />
                <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                    <thead>
                        <tr>
                            <th>Antecedentes alérgicos</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><input type="text" id="txt-aalergic" class="inp-lname" placeholder="Antecedentes alérgicos" name="AAl"/></div> </td>
                        </tr>
                    <thead>
                        <tr>
                            <td>Antecedentes personales</td> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><input type="text" id="txt-apersonales" class="inp-lname" placeholder="Antecedentes personales" name="AP"/></div></td>
                        </tr>
                    <thead>
                        <tr>
                            <th>Antecedentes familiares</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><input type="text" id="txt-afamiliares" class="inp-lname" placeholder="Antecedentes familiares" name="AF"/></div></td>
                        </tr>
                    <thead>
                        <tr>
                            <td>Antecedentes quirurgicos</td> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><input type="text" id="txt-aquirurgicos" class="inp-lname" placeholder="Antecedentes quirurgicos" name="Aq"/></div></td>
                        </tr>
                    </tbody>
                </table>  
                <hr />
                <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                    <thead>
                        <tr>
                            <th>Fecha</th> 
                            <th>Motivo de consulta</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><input type="date" id="txt-motivocon" class="inp-lname" placeholder="Fecha" name="Fecha"/></div></td> 
                            <td><div class="div-cont-lname"><input type="text" id="txt-motivocon" class="inp-lname" placeholder="Motivo de consulta" name="mc"/></div></td> 
                    <thead>
                        <tr>
                            <td>Enfermedad o problema actual</td> 
                            <td>Diagnostico</td> 
                        </tr>
                    </thead>
                    <tr>
                        <td><div class="div-cont-lname"><input type="text" id="txt-enfermedad" class="inp-lname" placeholder="Enfermedad o problema actual" name="Ep"/></div></td> 
                        <td><div class="div-cont-lname"><input type="text" id="txt-enfermedad" class="inp-lname" placeholder="Diagnostico" name="diagnostico"/></div></td>
                    </tr>
                    <thead>
                        <tr>
                            <th>Tipo de atencion</th> 
                            <th>Examenes</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-sel-dep-to-transf" style='margin-top: -40px !important;'><select class="sel-dep-to-transf">
                                        <option>Diagnostico</option>
                                        <option>Preventivo</option>
                                        <option>Definitivo</option>
                                    </select></div> </td> 
                            <td><div class="div-cont-lname"><input type="file" id="txt-datoexamen" class="inp-lname" placeholder="Datos de examen" name="CargarArchivo"/></div></td>
                        </tr>

                        <tr>
                            <td>  <input type="submit" id="btn-action" class="btn-accept" value="Guardar"/></td>
                            <td><input type="button" id="btn-action" class="btn-accept" value="Cancelar"/></td>
                        </tr>
                    </tbody>
                </table>        
            </div>
        </section>
    </form> 


</body>
<footer></footer>
<script src="js/JQuery.js" type="text/javascript"></script>
<script src="js/Opciones.js" type="text/javascript"></script> 
<script src="js/Buscadorpaciente.js" type="text/javascript"></script> 
<script type="text/javascript">
                                $(function () {

                                    $(":input[name = 'search' ]").keyup(function () {

                                        / * Cada vez que el usuario suelta la tecla, se borrará el último contenido del mensaje * /
                                        $("#list li").remove();

                                        var $val = $(this).val();
                                        var url = "${pageContext.request.contextPath}/searchservlet?content=" + $val;
                                        var args = {"time": new Date()};
                                        $.get(url, args, function (data) {

                                            / * La respuesta es una matriz de objetos json * /
                                            for (var i = 0; i < data.length; i++)
                                                $("#list").append("<li><a>" + data[i].content + "</a></li>");

                                        }, "json");

                                    });

                                })



</script>

</html> 