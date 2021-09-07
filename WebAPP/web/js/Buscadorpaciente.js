$(document).ready(function(){
   
    $("#btn-actionr").click(function (){
       
          window.location.href = "./RecetaMedica.jsp?user="+getQueryVariableRe();
    });
    usermedico();
});

function getQueryVariableRe() {
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split("=");
     return pair[1];
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
function buscador1 () {

        var cedula = document.getElementById("txt-ced").value;
        $.ajax({
            cache: false,
            type: "POST",
            url: "Addrecetamedica",
            data: {cedula: cedula,op:"1"},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
               // $("#txt-namep").val(data.nombrescompletos);
                document.getElementById("txt-namep").value=data.nombrescompleto.toString();
            }

        });
    };


function validaNumericosA(event)
{
    if (event.charCode >= 48 && event.charCode <= 57)
    {
        return true;
    }
    if (event.charCode == 13)
    {
        console.log("unio");
        buscador1();
    }
    return false;
}
//datos medico
function usermedico(){
           
      var user = getQueryVariableRe();
        $.ajax({
            cache: false,
            type: "POST",
            url: "Addrecetamedica",
            data: {user: user,op:"2"},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
               // $("#txt-namep").val(data.nombrescompletos);
                document.getElementById("txt-nameme").value=data.nombresmedico.toString();
            }

        });
    }

/*function ingresoreceta(){
     $('#btn-actiongg').click(function (e) {
    
        var json = {
            pacienteid: document.getElementById("").value;
            galenoid: document.getElementById("").value;
            fecha:document.getElementById("txt-lnamef").value;
            medicamento: document.getElementById("").value;
            indicaciones: document.getElementById("").value;
        }
     
    });*/

