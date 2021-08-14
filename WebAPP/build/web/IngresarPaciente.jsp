<%-- 
    Document   : IngresarPaciente
    Created on : 14/08/2021, 16:32:50
    Author     : jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id="form1" action="/WebAPP/AddPaciente"  autocomplete="off">
        <select class="sel-dep-to-transf" name="TipoIden">
            <option>Tipo de identificacion</option>
            <option>Pasaporte</option>
            <option>Cedula</option>
        </select>
        <input type="number" id="txt-ced" class="inp-ced" placeholder="Numero de identificacion" name="Identificacion"/>
        <input type="text" id="txt-name" class="inp-name" placeholder="PrimerNombre" name="PrimerNombre"/>
        <input type="text" id="txt-lname" class="inp-lname" placeholder="SegundoNombre" name="SegundoNombre"/>
        <input type="text" id="txt-name" class="inp-name" placeholder="PrimerApellido" name="PrimerApellido"/>
        <input type="text" id="txt-lname" class="inp-lname" placeholder="SegundoApellido" name="SegundoApellido"/>
        <input type="date" id="txt-edad" class="inp-edad" placeholder="Fechadenacimiento" name="Fechadenacimiento"/>
        <input type="email" id="txt-name" class="inp-name" placeholder="CorreoElectronico" name="CorreoElectronico"/>
        <input type="number" id="txt-lname" class="inp-lname" placeholder="convencional" name="convencional"/> 
        <input type="number" id="txt-edad" class="inp-edad" placeholder="Celular" name="Celular"/>
        <input type="text" id="txt-lname" class="inp-lname" placeholder="Provincia" name="Provincia"/>
        <input type="text" id="txt-name" class="inp-name" placeholder="Canton" name="canton"/>
        <input type="text" id="txt-lname" class="inp-lname" placeholder="Direccion" name="Direccion"/>
        <input type="text" id="txt-lname" class="inp-lname" placeholder="parroquia" name="parroquia"/>
        <select class="sel-dep-to-transf" name="estadoCivil">
            <option>Seleccione el estado civil</option>
            <option>Soltero</option>
            <option>Casado</option>
            <option>Union libre</option>
            <option>Viudo</option>
            <option>Divorciado</option>
        </select>
        <select class="sel-dep-to-transf" name="Ayuda">
            <option>Recibe ayuda social</option>
            <option>si</option>
            <option>no</option>
        </select>
        <input type="text" id="txt-lname" class="inp-lname" placeholder="Nacionalidad" name="nacionalidad"/>
        <input type="text" id="txt-lname" class="inp-lname" placeholder="Dsicapacidad" name="discapacidad"/>
        <input type="text" id="txt-lname" class="inp-lname" placeholder="tipoSangre" name="tipoSangre"/>
    <center><input class="botons" type="submit" name="btn2"value="Guardar"></center>
    </form>
</body>
</html>
