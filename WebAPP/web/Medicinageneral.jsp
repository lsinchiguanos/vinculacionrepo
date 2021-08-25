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
                    <div class="div-cont-ced"><input type="number" id="txt-cedi" class="inp-ced" placeholder="Numero de identificacion" name="Identificacion" onkeypress='return validaNumericos(event)'/></div>
                    <div class="div-cont-name"><input type="text" id="txt-namen" class="inp-name" placeholder="Nombres" name="Nombres" onkeypress="return soloLetras(event)"/></div>
                    <div class="div-cont-lname"><input type="text" id="txt-lnamea" class="inp-lname" placeholder="Apellidos" name="Apellidos" onkeypress="return soloLetras(event)"/></div>
                </div>
                <div class="div-row-two"> 
                    <div class="div-cont-name"><input type="date" id="txt-namef" class="inp-name" placeholder="Fecha de nacimiento" name="Fecha de nacimiento"/></div>
                    <div class="div-cont-lname"><input type="text" id="txt-lnamet" class="inp-lname" placeholder="Telefono Convencional" name="convencional" onkeypress='return validaNumericos(event)'/></div>
                    <div class="div-cont-edad"><input type="text" id="txt-cel" class="inp-edad" placeholder="Celular" name="Celular" onkeypress='return validaNumericos(event)'/></div> 
                </div>
                <div class="div-row-three">
                    <div class="div-cont-lname"><input type="text" id="txt-provin" class="inp-lname" placeholder="Provincia" name="Provincia" onkeypress="return soloLetras(event)"/></div> 
                    <div class="div-cont-lname"><input type="text" id="txt-direccion" class="inp-lname" placeholder="Direccion" name="Direccion"/></div>
                    <div class="div-cont-lname"><input type="text" id="txt-genero" class="inp-lname" placeholder="Genero" name="Genero" onkeypress="return soloLetras(event)"/></div>

                </div>
                <div class="div-row-four">
                    <div class="div-cont-lname"><input type="text" id="txt-ayudaeconomica" class="inp-lname" placeholder="Ayuda economica" name="Ayuda economica" onkeypress="return soloLetras(event)"/></div>
                    <div class="div-cont-lname"><input type="text" id="txt-nacionalidad" class="inp-lname" placeholder="Nacionalidad" name="Nacionalidad" onkeypress="return soloLetras(event)"/></div>
                    <div class="div-cont-lname"><input type="text" id="txt-tiposangre" class="inp-lname" placeholder="Tipo de sangre" name="Tipo de sangre" onkeypress="return soloLetras(event)"/></div>
                </div> 
            </div>
        </form> 
    </section>

    <section class="sec-data-repre">
        <form>
            <div class="div-cont-main">
                <div class="div-row-one">
                    <div class="div-cont-ced"><input type="number" id="txt-estatura" class="inp-ced" placeholder="Estatura"/></div>
                    <div class="div-cont-name"><input type="text" id="txt-peso" class="inp-name" placeholder="Peso"/></div>
                    <div class="div-cont-lname"><input type="text" id="txt-tiposangree" class="inp-lname" placeholder="Tipo de Sangre"/></div>
                </div> 
                <div class="div-row-two">   
                    <div class="div-cont-lname"><input type="text" id="txt-pc" class="inp-lname" placeholder="P/C"/></div>
                    <div class="div-cont-lname"><input type="text" id="txt-pt" class="inp-lname" placeholder="P/T"/></div>
                    <div class="div-cont-lname"><input type="text" id="txt-pa" class="inp-lname" placeholder="P/A"/></div>
                </div>   
                <%--  <div class="div-row-three"> 
                      <input type="button" id="btn-action" class="btn-accept" value="Guardar"/>
                      <input type="button" id="btn-action" class="btn-accept" value="Cancelar"/>
                  </div>--%>
            </div>   
        </form> 
    </section>

    <section class="sec-data-medicos">
        <form>
            <div class="div-cont-main">
                <div class="div-row-one">
                    <div class="div-cont-lname"><input type="text" id="txt-aalergic" class="inp-lname" placeholder="Antecedentes alérgicos"/></div>
                    <div class="div-cont-lname"><input type="text" id="txt-apersonales" class="inp-lname" placeholder="Antecedentes personales"/></div>
                </div> 
                <div class="div-row-two">   
                    <div class="div-cont-lname"><input type="text" id="txt-afamiliares" class="inp-lname" placeholder="Antecedentes familiares"/></div>
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
                    <div class="div-cont-lname"><input type="text" id="txt-motivocon" class="inp-lname" placeholder="Motivo de consulta"/></div>
                    <div class="div-cont-lname"><input type="text" id="txt-enfermedad" class="inp-lname" placeholder="Enfermedad o problema actual"/></div>
                </div> 
                <div class="div-row-two">   
                    <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                            <option>Diagnostico</option>
                            <option>Preventivo</option>
                            <option>Definitivo</option>
                        </select></div>
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
