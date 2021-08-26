<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link href="css/Medicina.css" rel="stylesheet" type="text/css"/>
    <a href="../src/java/DAO/Buscador.java"></a>
    <title>WebApp - Medicina General</title>
</head>
<body>
    <header id="header" style=" background: #007653 !important;">
        <a class="logo" href="Principal.jsp">
            <img style="margin-top:8px"src="img/circled_left_30px.png" title="Ir a la página anterior" alt="logo">
        </a>
        <a class="logo" id="ulUserData" href="index.html"></a>
       
    </header>     



    <section class="sec-input-data">
        <form>
            <div class="div-cont-ced"><input type="text" id="txt-cede" class="inp-ced" placeholder="Cédula"/></div>            
            <div class="div-cont-search"><input type="button" id="btn-actionb" class="inp-search" value="Buscar"/></div>

        </form>
    </section>

    <section class="sec-options">
        <div class="div-cont-pacient"><h3>Datos personales del paciente</h3></div>
        <div class="div-cont-repre"><h3>Datos medicos generales</h3></div> 
        <div class="div-cont-d-medicos"><h3>Antecedentes</h3></div> 
        <div class="div-cont-d-consulta"><h3>Consulta</h3></div> 
    </section>


    <section class="sec-data-pacient">
        <form>
            <div class="div-cont-main">
                <div class="div-row-one">
                    Identificación:
                    <div class="div-cont-ced"><input type="number" id="txt-cedi" class="inp-ced" placeholder="Numero de identificacion" name="Identificacion" onkeypress='return validaNumericos(event)' disabled="true"/></div>
                    Nombres:
                    <div class="div-cont-name"><input type="text" id="txt-namen" class="inp-name" placeholder="Nombres" name="Nombres" onkeypress="return soloLetras(event)"disabled="true"/></div>
                    Apellidos:
                    <div class="div-cont-lname"><input type="text" id="txt-lnamea" class="inp-lname" placeholder="Apellidos" name="Apellidos" onkeypress="return soloLetras(event)"disabled="true"/></div>
                </div>
                <div class="div-row-two">
                    Discapacidad:
                    <div class="div-cont-name"><input type="text" id="txt-namef" class="inp-name" placeholder="Discapacidad" name="Discapacidad"disabled="true"/></div>
                    Telefono convencional:
                    <div class="div-cont-lname"><input type="text" id="txt-lnamet" class="inp-lname" placeholder="Telefono Convencional" name="convencional" onkeypress='return validaNumericos(event)'disabled="true"/></div>
                    Celular:
                    <div class="div-cont-edad"><input type="text" id="txt-cel" class="inp-edad" placeholder="Celular" name="Celular" onkeypress='return validaNumericos(event)'disabled="true"/></div> 
                </div>
                <div class="div-row-three">
                    Provincia:
                    <div class="div-cont-lname"><input type="text" id="txt-provin" class="inp-lname" placeholder="Provincia" name="Provincia" onkeypress="return soloLetras(event)"disabled="true"/></div> 
                    Direccion:
                    <div class="div-cont-lname"><input type="text" id="txt-direccion" class="inp-lname" placeholder="Direccion" name="Direccion"disabled="true"/></div>
                    Genero:
                    <div class="div-cont-lname"><input type="text" id="txt-genero" class="inp-lname" placeholder="Genero" name="Genero" onkeypress="return soloLetras(event)"disabled="true"/></div>

                </div>
                <div class="div-row-four">
                    Ayuda economica:
                    <div class="div-cont-lname"><input type="text" id="txt-ayudaeconomica" class="inp-lname" placeholder="Ayuda economica" name="Ayuda economica" onkeypress="return soloLetras(event)"disabled="true"/></div>
                    Nacionalidad:
                    <div class="div-cont-lname"><input type="text" id="txt-nacionalidad" class="inp-lname" placeholder="Nacionalidad" name="Nacionalidad" onkeypress="return soloLetras(event)"disabled="true"/></div>
                    Correo electronico:
                    <div class="div-cont-lname"><input type="text" id="txt-tiposangre" class="inp-lname" placeholder="Correo electronico" name="Correo electronico" onkeypress="return soloLetras(event)"disabled="true"/></div>
                </div> 
            </div>
        </form> 
    </section>

    <section class="sec-data-repre">
        <form>
            <div class="div-cont-main">
                <div class="div-row-one">
                    Estatura: 
                    <div class="div-cont-ced"><input type="number" id="txt-estatura" class="inp-ced" placeholder="Estatura"/></div>
                    Peso:
                    <div class="div-cont-name"><input type="text" id="txt-peso" class="inp-name" placeholder="Peso"/></div>
                    Temperatura:
                    <div class="div-cont-lname"><input type="text" id="txt-tiposangree" class="inp-lname" placeholder="Tipo de Sangre"/></div>
                </div> 
                <div class="div-row-two">   
                    P/A:
                    <div class="div-cont-lname"><input type="text" id="txt-pc" class="inp-lname" placeholder="P/C"/></div>
                    P/T:
                    <div class="div-cont-lname"><input type="text" id="txt-pt" class="inp-lname" placeholder="P/T"/></div>
                    P/A:
                    <div class="div-cont-lname"><input type="text" id="txt-pa" class="inp-lname" placeholder="P/A"/></div>
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
                    Antecedentes alergicos:
                    <div class="div-cont-lname"><input type="text" id="txt-aalergic" class="inp-lname" placeholder="Antecedentes alérgicos"/></div>
                 </div> 
                <div class="div-row-two">
                     Antecedentes personales:
                   <div class="div-cont-lname"><input type="text" id="txt-apersonales" class="inp-lname" placeholder="Antecedentes personales"/></div>
                </div> 
                <div class="div-row-three">   
                     Antecedentes familiares:
                    <div class="div-cont-lname"><input type="text" id="txt-afamiliares" class="inp-lname" placeholder="Antecedentes familiares"/></div>
                 </div>
                <div class="div-row-four">  
                     Antecedentes quirurgicos:
                     <div class="div-cont-lname"><input type="text" id="txt-aquirurgicos" class="inp-lname" placeholder="Antecedentes quirurgicos"/></div>
                </div>
                
                <%--  <div class="div-row-three"> 
                    <input type="button" id="btn-action" class="btn-accept" value="Guardar"/>
                    <input type="button" id="btn-action" class="btn-accept" value="Cancelar"/>
                </div>--%>
            </div>   
        </form> 
    </section>

    <section class="sec-data-consulta">
        <form>
            <div class="div-cont-main">
                <div class="div-row-one">
                    Motivo de consulta:
                    <div class="div-cont-lname"><input type="text" id="txt-motivocon" class="inp-lname" placeholder="Motivo de consulta"/></div>
                  </div> 
                 <div class="div-row-two">
                     Enfermedad o problema:
                    <div class="div-cont-lname"><input type="text" id="txt-enfermedad" class="inp-lname" placeholder="Enfermedad o problema actual"/></div>
                </div> 
                <div class="div-row-three">   
                    Diagnostico:
                    <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                            <option>Diagnostico</option>
                            <option>Preventivo</option>
                            <option>Definitivo</option>
                        </select></div>
                    Archivos de examen:
                    <div class="div-cont-lname"><input type="file" id="txt-datoexamen" class="inp-lname" placeholder="Datos de examen"/></div>

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
