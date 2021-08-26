<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link href="css/Ingresos.css" rel="stylesheet" type="text/css"/>
        <title>WebApp - Ingresos</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important;">
            <a class="logo" href="Principal.jsp">
                <img style="margin-top:8px"src="img/circled_left_30px.png" title="Ir a la página anterior" alt="logo">
            </a>
            <a class="logo" id="ulUserData" href="index.html"></a>
            <nav>
            </nav>
        </header>

        <!--  <section class="sec-input-data">
              <form class="form">
                  <div class="div-cont-ced"><input type="text" id="txt-ced" class="inp-ced" placeholder="Cédula"/></div>            
                  <div class="div-cont-search"><input type="button" id="btn-action" class="inp-search" value="Buscar"/></div>
              </form>
          </section> !-->
        <form class="form1" action="/WebAPP/AddPaciente" autocomplete="off">
            <section class="sec-main">
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf" name="TipoIden">
                                <option>Tipo de identificacion</option>
                                <option>Cedula</option><option>Pasaporte</option></select></div>

                        <div class="div-cont-ced"><input type="text" id="txt-ced" minlength="10" maxlength="10" class="inp-ced" placeholder="Numero de identificacion" name="Identificacion" required="" onkeypress='return validaNumericos(event)'/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Nombre" name="PrimerNombre" required=""  onkeypress="return soloLetras(event)"/></div>

                    </div>
                    <div class="div-row-two">
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Nombre" name="SegundoNombre"required=""  onkeypress="return soloLetras(event)"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Apellido" name="PrimerApellido"required=""  onkeypress="return soloLetras(event)"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Apellido" name="SegundoApellido"required=""  onkeypress="return soloLetras(event)"/></div>

                    </div>
                    <div class="div-row-three">
                        <div class="div-cont-lname"><input type="date" id="txt-lname" class="inp-lname" placeholder="Segundo Apellido"required=""  name="Fechadenacimiento"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Correo Electronico"required=""  name="CorreoElectronico"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Telefono Convencional" name="convencional"required=""  onkeypress='return validaNumericos(event)'/></div>
                    </div>
                    <div class="div-row-four">
                        <div class="div-cont-edad"><input type="text" id="txt-edad" class="inp-edad" placeholder="Celular" name="Celular"required=""  onkeypress='return validaNumericos(event)'/></div> 
                         <select class="sel-dep-to-transf"required=""  name="Provincia">
                                <option>Seleccione una provincia</option>
                                <option>Esmeraldas</option><option>Manabí</option>
                                <option>Los Ríos</option><option>Guayas</option>
                                <option>El Oro</option><option>Santa Elena</option>
                                <option>Carchi</option><option>Imbabura</option>
                                <option>Pichincha</option><option>Santo Domingo de los Tsáchilas</option>
                                <option>Cotopaxi</option><option>Tungurahua </option>
                                <option>Chimborazo</option><option>Bolívar</option>
                                <option>Cañar</option><option>Azuay </option>
                                <option>Loja</option><option>Sucumbíos</option>
                                <option>Napo</option><option>Pastaza</option>
                                <option>Orellana</option><option> Morona Santiago</option>
                                <option>Zamora Chinchipe</option><option>Galápagos</option>
                            </select>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Canton" name="canton"required=""  onkeypress="return soloLetras(event)"/></div>
                    </div>
                    <div class="div-row-five">

                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Direccion"required=""  name="Direccion"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Parroquia"required=""  name="parroquia" onkeypress="return soloLetras(event)"/></div>
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf" name="genero">   
                                <option>Seleccione genero</option>
                                <option>Masculino</option>
                                <option>Femenino</option>
                            </select></div>
                    </div>

                    <div class="div-row-six">
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf"required=""  name="estadoCivil">
                                <option>Seleccione el estado civil</option>
                                <option>Soltero</option>
                                <option>Casado</option>
                                <option>Union libre</option>
                                <option>Viudo</option>
                                <option>Divorciado</option>
                            </select></div>
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf"required=""  name="Ayuda">
                                <option>Recibe Ayuda Social</option>
                                <option>Si</option>
                                <option>No</option>
                            </select></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Nacionalidad" required="" name="nacionalidad" onkeypress="return soloLetras(event)"/></div>
                    </div>                 

                    <div class="div-row-seven">
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Discapacidad"required=""  name="discapacidad"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Tipo de sangre"required="" name="tipoSangre"/> </div>
                        <input type="submit" id="btn-action" class="btn-accept" value="Guardar"/>
                    </div> 
                </div>
            </section>
        </form> 

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
            function validar() {
                var cad = document.getElementById("txt-ced").value.trim();
                var total = 0;
                var longitud = cad.length;
                var longcheck = longitud - 1;

                if (cad !== "" && longitud === 10) {
                    for (i = 0; i < longcheck; i++) {
                        if (i % 2 === 0) {
                            var aux = cad.charAt(i) * 2;
                            if (aux > 9)
                                aux -= 9;
                            total += aux;
                        } else {
                            total += parseInt(cad.charAt(i)); // parseInt o concatenará en lugar de sumar
                        }
                    }

                    total = total % 10 ? 10 - total % 10 : 0;

                    if (cad.charAt(longitud - 1) == total) {
                    } else {
                        alert("LA CEDULA NO EXISTE O ES INCORRECTA");
                        document.getElementById("txt-ced").value = "";

                    }
                }
            }
        </script>
    </body>

    <footer></footer>
    <script src="js/JQuery.js" type="text/javascript"></script>  
</html>
