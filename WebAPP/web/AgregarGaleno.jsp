<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="BD.conexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" > 
        <link href="css/Galeno.css" rel="stylesheet" type="text/css"/> 
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>WebApp - Ingresos</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important;"  >
            <nav class="nav-tp" ></nav>
            <a class="logo" href="Principal.jsp">
                <img style="margin-top:2px"src="img/circled_left_30px.png" title="Ir a la página anterior" alt="logo">
            </a>
            <a class="logo" id="ulUserData" href="index.html"></a>
        </header>
        <div class="div-head-tittle"><h2></h2></div>
        <!--javascript:sendmail()-->
        <!--/WebAPP/AddGaleno-->
        
        
        
        <form class="form1" action="/WebAPP/AddGaleno">
            <section class="sec-main" >
                <div class="div-cont-main">
                    <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                        <thead >
                            <tr>
                                <th>Tipo de identificacion</th>
                                <th>Numero de identificacion</th>
                                <th>Primer Nombre</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-sel-dep-to-transf" ><select class="sel-dep-to-transf" name="TipoIden">
                                            <option>Tipo de identificacion</option>
                                            <option>Cedula</option><option>Pasaporte</option></select></div></td>
                                <td><div style='margin-top: -40px !important;'class="div-cont-ced"><input type="text" id="txt-ced" minlength="10" maxlength="10" class="inp-ced" placeholder="Numero de identificacion" name="Identificacion" required="" onkeypress='return validaNumericos(event)'/></div></td>
                                <td><div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Nombre" name="PrimerNombre" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Segundo Nombre</th>
                                <th>Primer Apellido</th>
                                <th>Segundo Apellido</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Nombre" name="SegundoNombre"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Apellido" name="PrimerApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Apellido" name="SegundoApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Celular</th>
                                <th>Provincia</th>
                                <th>Canton</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-edad"><input type="text" id="txt-edad" class="inp-edad" placeholder="Celular" name="celular"required=""  onkeypress='return validaNumericos(event)'/></div> </td>                      
                                <td><div class="div-cont-sel-dep-to-transf" ><select class="sel-dep-to-transf"required=""  name="provincia">
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
                                        </select></div></td> 
                                <td><div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Canton" name="canton"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>

                            </tr> 
                        </tbody>
                        <thead >
                            <tr>                                
                                <th>Parroquia</th>
                                <th>Direccion</th>                               
                                <th>Correo Electronico</th> 
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 

                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Parroquia"required=""  name="parroquia" onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td> 
                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Direccion"required="" name="direccion" onkeyup="mayus(this);"/> </div></td> 
                                <td><div class="div-cont-lname"><input type="email" id="email" class="inp-lname" placeholder="correo electronico"required="" name="email"/> </div></td> 
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                            </tr>
                        </thead>
                        <thead >
                        <thead >
                            <tr>
                                <th>Usuario</th>                               
                                <th>Contraseña</th> 
                                <th>Departamento</th> 
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td><div class="div-cont-lname"><input type="text" id="user" class="inp-lname" placeholder="Ingrese el usuario"required="" name="user"/> </div></td> 
                                <td><div class="div-cont-lname"><input type="password" id="pass" class="inp-lname" placeholder="Ingrese una Contraseña"required="" name="pass"/> </div></td> 
                                <td><div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf"required=""  name="departamento">
                                            <option>Seleccione un departamento</option>
                                            <option>medicina</option>
                                        </select></div></td> 
                               
                            </tr>
                        </tbody>
                        <thead>
                        <td>
                            <input type="submit" id="btn-action" class="btn-accept"  value="Guardar"/> 
                        </td>
                        </thead>
                    </table> 
                </div>
            </section>
        </form> 

        <script
            src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
        crossorigin="anonymous"></script>
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
                                    function mayus(e) {
                                        e.value = e.value.toUpperCase();
                                    }
                                    function sendmail() {

                                        var email = $('#email').val();
                                        var subject = $('#user').val();
                                        var message = $('#pass').val();
                                        var email1 = 'http://localhost:8084/WebAPP/index.jsp';
                                        // var body = $('#body').val();

                                        var Body = '<br>LINK DE LA APLICACION ' + email1 +'<br>El Usuario creado es: ' + subject + '<br>Su Password es:' + message;
                                        //console.log(name, phone, email, message);
                                        Email.send({
                                            SecureToken: "b8dcb77b-e238-4e7a-bab3-76f2bbb708c0",
                                            To: email ,
                                            From: "gadquevedovinculaciongadqueved@gmail.com",
                                            Subject: "New message de GadQuevedo Vinculacion ",
                                            Body: Body
                                        }).then(
                                                message => {
                                                    //console.log (message);
                                                    if (message == 'OK') {
                                                        alert('Email enviado con datos del medico.');
                                                        location.href = "index.jsp"
                                                    } else {
                                                        console.error(message);
                                                        alert('Error. No se ha enviado. ')

                                                    }

                                                }
                                        );



                                    }
        </script>
    </body>
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <script src="js/pais.js"></script>
    <script src="js/JQuery.js" type="text/javascript"></script>  
</html>
