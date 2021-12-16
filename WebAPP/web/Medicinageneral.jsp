<%@page import="java.sql.ResultSet"%>
<%@page import="BD.conexion"%>
<%@page import="java.sql.PreparedStatement"%>
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


    <form id="form1" action="AddMedicinaGeneral" method="POST" enctype="multipart/form-data">
        <section class="sec-main">
            <div class="div-cont-main">
                <div class="div-cont-ced">
                    <input type="text" id="txt-cede" class="inp-ced" onkeypress='return validaNumericos(event)' placeholder="Cédula" name="cedula" maxlength="15"/>
                    <input type="text" id="txt-cede" class="inp-ced" onkeypress="return soloLetras(event)" placeholder="Apellidos y nombres" name="apellidos" maxlength="250"/>
                    <input type="button" id="btn-actionb" class="inp-search" value="Buscar"/>
                </div>            
                <!--<div class="div-cont-search"></div>-->
                <hr /> 
                <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                    <thead>
                        <tr>
                            <th>Numero de identificacion</th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> <div class="div-cont-ced" style='margin-top: -40px !important;'><input type="text" id="txt-cedi" class="inp-ced" placeholder="Numero de identificacion" name="Identificacion" onkeypress='return validaNumericos(event)' disabled="true"/></div> </td>
                            <td> <div class="div-cont-name"  ><input type="text" id="txt-namen" class="inp-name" placeholder="Nombres" name="Nombres" onkeypress="return soloLetras(event)"disabled="true" onkeyup="mayus(this);"/></div> </td>
                            <td> <div class="div-cont-lname"  ><input type="text" id="txt-lnamea" class="inp-lname" placeholder="Apellidos" name="Apellidos" onkeypress="return soloLetras(event)"disabled="true" onkeyup="mayus(this);"/></div> </td>
                        </tr>
                    </tbody>

                    <thead>
                        <tr>
                            <td>Discapacidad</td>
                            <td>Telefono convencional</td>
                            <td>Celular</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>

                            <td> <div class="div-cont-name"><input type="text" id="txt-namef" class="inp-name" placeholder="Discapacidad" name="Discapacidad"disabled="true" disabled="true" onkeyup="mayus(this);"/></div> </td>
                            <td> <div class="div-cont-lname"><input type="text" id="txt-lnamet" class="inp-lname" placeholder="Telefono Convencional" name="convencional" onkeypress='return validaNumericos(event)'disabled="true"/></div> </td>
                            <td> <div class="div-cont-edad"><input type="text" id="txt-cel" class="inp-edad" placeholder="Celular" name="Celular" onkeypress='return validaNumericos(event)'disabled="true"/></div>  </td>
                        </tr>
                    </tbody>
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
                    </tbody>

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
                            <td><div class="div-cont-ced" style='margin-top: -40px !important;'><input type="text" id="txt-estatura" class="inp-ced" placeholder="Estatura"onkeyup="mayus(this);" name="Estatura"/></div></td>
                            <td><div class="div-cont-name" ><input type="text" id="txt-peso" class="inp-name" placeholder="Peso" name="peso"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-tiposangree" class="inp-lname" placeholder="Tipo de Sangre" name="sangre" onkeyup="mayus(this);"/></div></td>
                        </tr>
                    <thead>
                        <tr>
                            <th>P/C</th>
                            <th>P/T</th>
                            <th>P/A</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><input type="text" id="txt-pc" class="inp-lname" placeholder="P/C" name="pc" onkeyup="mayus(this);"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-pt" class="inp-lname" placeholder="P/T" name="pt" onkeyup="mayus(this);"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-pa" class="inp-lname" placeholder="P/A" name="pa" onkeyup="mayus(this);"/></div></td>
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
                            <td><div class="div-cont-lname"><textarea type="text" id="txt-aalergic" class="inp-lname" placeholder="Antecedentes alérgicos" name="AAl" onkeyup="mayus(this);"style='height: 85px;'/></textarea> </td>
                        </tr>
                    <thead>
                        <tr>
                            <th>Antecedentes personales</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><textarea type="text" id="txt-apersonales" class="inp-lname" placeholder="Antecedentes personales" onkeyup="mayus(this);"name="AP"style='height: 85px;'/></textarea></td>
                        </tr> 
                    <thead>
                        <tr>
                            <th>Antecedentes familiares</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><textarea type="text" id="txt-afamiliares" class="inp-lname" placeholder="Antecedentes familiares" onkeyup="mayus(this);" name="AF"style='height: 85px;'/></textarea></td>
                        </tr>
                    <thead>
                        <tr>
                            <th>Antecedentes quirurgicos</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><textarea type="text" id="txt-aquirurgicos" class="inp-lname" placeholder="Antecedentes quirurgicos" onkeyup="mayus(this);"name="Aq"style='height: 85px;'/></textarea></td>
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
                            <td><div class="div-cont-lname"><textarea type="text" id="txt-motivocon" class="inp-lname" required=""placeholder="Motivo de consulta" name="mc" onkeyup="mayus(this);"style='height: 85px;'/></textarea> </td> 
                        </tr>
                    <thead>
                        <tr>
                            <td>Enfermedad o problema actual</td> 
                            <td>Diagnostico</td> 
                        </tr>
                    </thead>
                    <tr>
                        <td><div class="div-cont-lname"><textarea type="text" id="txt-enfermedad" class="inp-lname" required="" placeholder="Enfermedad o problema actual" name="Ep" onkeyup="mayus(this);"style='height: 85px;'/></textarea></td> 
                        <td><div class="div-cont-lname"><textarea type="text" id="txt-diagnostico" class="inp-lname"required="" placeholder="Diagnostico" name="diagnostico" onkeyup="mayus(this);"style='height: 85px;'/></textarea></td>
                    </tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <th><div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf" name="tipo">
                                        <option>Diagnostico</option>
                                        <option>Preventivo</option>
                                        <option>Definitivo</option>
                                    </select></div> </th> 
                        </tr>                        
                        <tr>
                            <td>  <input type="submit" id="btn-actiong" class="btn-accept" value="Guardar"/></td>
                                <%--  <td><input type="button" id="btn-actionc" class="btn-accept" value="Cancelar"/></td>            --%>                
                            <td>
                                <a><input type="button" id="btn-actionr" class="btn-accept" value="Receta" /></a>
                            </td>
                        </tr>
                    </tbody>
                </table>          
            </div>
        </section>

    </form> 
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/newjavascript.js" type="text/javascript"></script>
</body>
<footer></footer>
<script src="js/JQuery.js" type="text/javascript"></script> 
<script src="js/Buscadorpaciente.js" type="text/javascript"></script> 
<script type="text/javascript">
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
                            function mayus(e) {
                                e.value = e.value.toUpperCase();
                            }
                            function verificarCedula(cedula) {
                                if (typeof (cedula) == 'string' && cedula.length == 10 && /^\d+$/.test(cedula)) {
                                    var digitos = cedula.split('').map(Number);
                                    var codigo_provincia = digitos[0] * 10 + digitos[1];

                                    //if (codigo_provincia >= 1 && (codigo_provincia <= 24 || codigo_provincia == 30) && digitos[2] < 6) {

                                    if (codigo_provincia >= 1 && (codigo_provincia <= 24 || codigo_provincia == 30)) {
                                        var digito_verificador = digitos.pop();

                                        var digito_calculado = digitos.reduce(
                                                function (valorPrevio, valorActual, indice) {
                                                    return valorPrevio - (valorActual * (2 - indice % 2)) % 9 - (valorActual == 9) * 9;
                                                }, 1000) % 10;
                                        return digito_calculado === digito_verificador;
                                    }
                                }
                                return false;
                            }
</script>


</html> 
