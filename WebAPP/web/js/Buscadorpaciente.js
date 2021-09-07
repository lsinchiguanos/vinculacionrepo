$(document).ready(function () {

    $("#btn-actionr").click(function () {

        window.location.href = "./RecetaMedica.jsp?user=" + getQueryVariableRe();
    });
    usermedico();
});

function getQueryVariableRe() {
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split("=");
        console.log(pair[1].toString());
        return pair[1].toString();
    }

}


$(function () {
    $('#btn-actionb').click(function (e) {
        buscador();
    });
    const buscador = () => {

        var cedula = document.getElementById("txt-cede").value;
        $.ajax({
            cache: false,
            type: "POST",
            url: "Controllerbuscarpaciente",
            data: {cedula: cedula},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                $("#txt-cedi").val(data.paciente_dni);
                $("#txt-namen").val(data.paciente_primer_segundo_nombre);
                $("#txt-lnamea").val(data.paciente_primer_segundo_apellido);
                $("#txt-namef").val(data.paciente_grupo);
                $("#txt-lnamet").val(data.paciente_convencional);
                $("#txt-cel").val(data.paciente_telefono);
                $("#txt-provin").val(data.paciente_provincia);
                $("#txt-direccion").val(data.paciente_direccion);
                $("#txt-genero").val(data.paciente_genero);
                $("#txt-ayudaeconomica").val(data.paciente_ayudasocial);
                $("#txt-nacionalidad").val(data.paciente_nacionalidad);
                $("#txt-tiposangre").val(data.paciente_correoelectronico);
            }

        });
    };
});
//Datos del paciente
var ideusuario;
var idemedico;
function buscador1() {

    var cedu = document.getElementById("txt-ced").value;

    $.ajax({
        cache: false,
        type: "POST",
        url: "./NewServle",
        data: {cedula: cedu, op: "1"},
        dataType: 'json',
        error: function (request, status, error)
        {
            console.log(request, status, error);
        },
        success: function (data)
        {
            console.log(data.nombrescompleto.toString());
            var cadena = data.nombrescompleto.split("-");
            document.getElementById("txt-namep").value = cadena[0];
            ideusuario = cadena[1];
        }

    });


}
function validaNumericosA(event)
{
    if (event.charCode >= 48 && event.charCode <= 57)
    {
        return true;
    }
    if (event.charCode === 13)
    {

        buscador1();
    }
    return false;
}
//datos medico
function usermedico() {

    var user = getQueryVariableRe();
    $.ajax({
        cache: false,
        type: "POST",
        url: "./NewServle",
        data: {user: user, op: "2"},
        dataType: 'json',
        error: function (request, status, error)
        {
            console.log(request, status, error);
        },
        success: function (data)
        {
            console.log(data.nombresmedico.toString());
            // $("#txt-namep").val(data.nombrescompletos);
             var cadena = data.nombresmedico.split("-");
            document.getElementById("txt-nameme").value = cadena[0];
            idemedico=cadena[1];
            
        }

    });
}
 $("#btn-addReceta").click(function (e) {
          enviarDatosreceta();
    e.preventDefault();
    var table = document.getElementById('tabla');
    var rowLength = table.rows.length;
    var jsonAll = [];
    for (var i = 1; i < rowLength; i += 1) {
        var row = table.rows[i];
        var jsoncell = {
            medicamento: row.cells[1].innerHTML,
            indicaciones: row.cells[2].innerHTML
        };
        jsonAll[i - 1] = jsoncell;
    }


   /* console.log(JSON.stringify(jsonAll));
    $.ajax({
        cache: false,
        type: "POST",
        url: "./NewServle",
        data: {jsonreceta: JSON.stringify(jsonAll), op: "3"},
        dataType: 'json',
        error: function (request, status, error)
        {
            alert(request, status, error);
        },
        success: function (data)
        {
            console.log(data);
            document.getElementById("txt-lnamef").value = data.fecha.toString();
       
        }
    });*/
});
 

function enviarDatosreceta() {
    $.ajax({
        data: {galenoid:idemedico, pacienteid: ideusuario,op:3},
        url: "./NewServle",
        cache: false,
        type: "POST",
        error: function (request, status, error)
        {
            alert(request, status, error);
        },
        success: function (data)
        {
            console.log(data);        
        }
    });
}

var data = { medicamento : $('#medicamento').val(), indicaciones : $('#indicaciones').val() };