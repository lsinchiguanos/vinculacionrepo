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
         <section class="sec-input-data">
       
            <div class="div-cont-ced"><input type="text" id="txt-cede" class="inp-ced" placeholder="Cédula" name="cedula"/></div>            
            <div class="div-cont-search"><input type="button" id="btn-actionb" class="inp-search" value="Buscar"/></div>
        
    </section>
        
        
        
        <section class="sec-main">
               <div class="div-cont-main">
                    <div class="div-row-one">
                     Identificación:
                    <div class="div-cont-ced"><input type="text" id="txt-cedi" class="inp-ced" placeholder="Numero de identificacion" name="Identificacion" onkeypress='return validaNumericos(event)' disabled="true"/></div>
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
                    Correo Electronico:
                    <div class="div-cont-lname"><input type="text" id="txt-tiposangre" class="inp-lname" placeholder="Correo Electronico" name="Correo Electronico" onkeypress="return soloLetras(event)"disabled="true"/></div>
                </div> 

                <div class="div-row-five">
                    Estatura:
                    <div class="div-cont-ced"><input type="number" id="txt-estatura" class="inp-ced" placeholder="Estatura" name="Estatura"/></div>
                    Peso:
                    <div class="div-cont-name"><input type="text" id="txt-peso" class="inp-name" placeholder="Peso" name="peso"/></div>
                    Tipo de sangre
                    <div class="div-cont-lname"><input type="text" id="txt-tiposangree" class="inp-lname" placeholder="Tipo de Sangre" name="sangre"/></div>
                </div> 

                <div class="div-row-six">   
                    P/C:
                    <div class="div-cont-lname"><input type="text" id="txt-pc" class="inp-lname" placeholder="P/C" name="pc"/></div>
                    P/T:
                    <div class="div-cont-lname"><input type="text" id="txt-pt" class="inp-lname" placeholder="P/T" name="pt"/></div>
                    P/A:
                    <div class="div-cont-lname"><input type="text" id="txt-pa" class="inp-lname" placeholder="P/A" name="pa"/></div>
                </div> 

                <div class="div-row-seven">
                    Antecedentes alérgicos:
                    <div class="div-cont-lname"><input type="text" id="txt-aalergic" class="inp-lname" placeholder="Antecedentes alérgicos" name="AAl"/></div>
                    Antecedentes personales:
                    <div class="div-cont-lname"><input type="text" id="txt-apersonales" class="inp-lname" placeholder="Antecedentes personales" name="AP"/></div>
                </div> 

                <div class="div-row-eigth">   
                    Antecedentes familiares
                    <div class="div-cont-lname"><input type="text" id="txt-afamiliares" class="inp-lname" placeholder="Antecedentes familiares" name="AF"/></div>
                    Antecedentes quirurgicos: 
                    <div class="div-cont-lname"><input type="text" id="txt-aquirurgicos" class="inp-lname" placeholder="Antecedentes quirurgicos" name="Aq"/></div>
                </div>  

                <div class="div-row-nine">
                    Fecha:
                    <div class="div-cont-lname"><input type="date" id="txt-motivocon" class="inp-lname" placeholder="Fecha" name="Fecha"/></div>
Motivo de consulta:
                    <div class="div-cont-lname"><input type="text" id="txt-motivocon" class="inp-lname" placeholder="Motivo de consulta" name="mc"/></div>
Enfermedad o problema actual:
                    <div class="div-cont-lname"><input type="text" id="txt-enfermedad" class="inp-lname" placeholder="Enfermedad o problema actual" name="Ep"/></div>
                </div> 
                   
                 <div class="div-row-ten">   
                    <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                            <option>Diagnostico</option>
                            <option>Preventivo</option>
                            <option>Definitivo</option>
                        </select></div>

                    <div class="div-cont-lname"><input type="text" id="txt-enfermedad" class="inp-lname" placeholder="Diagnostico" name="diagnostico"/></div>

                    <div class="div-cont-lname"><input type="file" id="txt-datoexamen" class="inp-lname" placeholder="Datos de examen" name="CargarArchivo"/></div>
                </div>   
                   
                <div class="div-row-eleven"> 
                    <input type="submit" id="btn-action" class="btn-accept" value="Guardar"/>
                    <input type="button" id="btn-action" class="btn-accept" value="Cancelar"/>
                </div> 
                   
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
