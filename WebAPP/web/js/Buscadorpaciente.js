$(function () {
    $('#btn-actionb').click(function (e) {
        buscador();
    });
    const buscador = () => {

        var cedula = document.getElementById("txt-cede").value;
        $.ajax({
            cache: false,
            type: "POST",
            url: "Buscadorpacientee",
            data: {cedula:cedula},      
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
            }
//            , headers: {
//                'Access-Control-Allow-Credentials': true,
//                'Access-Control-Allow-Origin': '*',
//                'Access-Control-Allow-Methods': 'GET',
//                'Access-Control-Allow-Headers': 'application/json'
//            }
        });
    };
});



