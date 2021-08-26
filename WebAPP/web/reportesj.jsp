<%@page import="java.sql.*"%>
<%@page import="BD.conexion"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Reporte</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="Principal/css/main.css" />
        <link rel="stylesheet" href="HistorialJean/css/dataTables.bootstrap.min.css">
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
        <%
            //CONECTANOD A LA BASE DE DATOS:
            conexion con = new conexion();
            PreparedStatement ps;
            //Emnpezamos Listando los Datos de la Tabla Usuario
            Statement smt;
            ResultSet rs;
            smt = con.getConecction().createStatement();
            rs = smt.executeQuery("select pa.paciente_dni as cedula ,pa.paciente_primer_nombre as primerNombre,pa.paciente_segundo_nombre as segundoNombre,pa.paciente_apellido_paterno as apeliidoPaterno,pa.paciente_apellido_materno as apellidoMaterno,pa.paciente_direccion as direccion,pa.paciente_provincia as provincia, pa.paciente_canton as canton, pa.paciente_parroquia as parroquia,pa.paciente_estado_civil as estadoCivil,me.antecedentespersonales as AntePerosnales, me.antecedentesfamiliares as AntFamiliares,me.antecedentesquirurgicos as AntQuirurgicos,me.fechaconsulta as Fechaconsulta, me.motivoconsulta as motivoConsulta,me.diagnositico as diagnostico from medicinageneral me inner join paciente pa on me.paciente_dni = pa.paciente_dni");
            if (rs.next()) {
                rs = smt.executeQuery("select pa.paciente_dni as cedula ,pa.paciente_primer_nombre as primerNombre,pa.paciente_segundo_nombre as segundoNombre,pa.paciente_apellido_paterno as apeliidoPaterno,pa.paciente_apellido_materno as apellidoMaterno,pa.paciente_direccion as direccion,pa.paciente_provincia as provincia, pa.paciente_canton as canton, pa.paciente_parroquia as parroquia,pa.paciente_estado_civil as estadoCivil,me.antecedentespersonales as AntePerosnales, me.antecedentesfamiliares as AntFamiliares,me.antecedentesquirurgicos as AntQuirurgicos,me.fechaconsulta as Fechaconsulta, me.motivoconsulta as motivoConsulta,me.diagnositico as diagnostico from medicinageneral me inner join paciente pa on me.paciente_dni = pa.paciente_dni");
        %>
        <table class="table display AllDataTables" border="1">
            <thead>
                <tr>
                    <th>Cedula</th>
                    <th>Fechaconsulta</th>
                    <th>motivoConsulta</th>
                    <th>diagnostico</th>
                    <th>primerNombre</th>
                    <th>segundoNombre</th>
                    <th>apeliidoPaterno</th>
                    <th>apellidoMaterno</th>
                    <th>direccion</th>
                    <th>provincia</th>
                    <th>canton</th>
                    <th>parroquia</th>
                    <th>estadoCivil</th>
                    <th>AntePerosnales</th>
                    <th>AntFamiliares</th>
                    <th>AntQuirurgicos</th>
                    

                </tr>
            </thead>
            <tbody>
                <%                    while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("cedula")%></td>
                    <td><%= rs.getString("Fechaconsulta")%></td>
                    <td><%= rs.getString("motivoConsulta")%></td>
                    <td><%= rs.getString("diagnostico")%></td>
                    <td><%= rs.getString("primerNombre")%></td>
                    <td><%= rs.getString("segundoNombre")%></td>
                    <td><%= rs.getString("apeliidoPaterno")%></td>
                    <td><%= rs.getString("apellidoMaterno")%></td>
                    <td><%= rs.getString("direccion")%></td>
                    <td><%= rs.getString("provincia")%></td>
                    <td><%= rs.getString("canton")%></td>
                    <td><%= rs.getString("parroquia")%></td>
                    <td><%= rs.getString("estadoCivil")%></td>
                    <td><%= rs.getString("AntePerosnales")%></td>
                    <td><%= rs.getString("AntFamiliares")%></td>
                    <td><%= rs.getString("AntQuirurgicos")%></td>
                    
                </tr>

                <%}%>
            </tbody>
        </table>  
        <%}%>
        <script src="HistorialJean/js/jquery-3.2.1.min.js"></script>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="HistorialJean/js/jquery.dataTables.min.js"></script>
        <script src="HistorialJean/js/dataTables.bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.AllDataTables').DataTable({
                    language: {
                        "sProcessing": "Procesando...",
                        "sLengthMenu": "Mostrar _MENU_ registros",
                        "sZeroRecords": "No se encontraron resultados",
                        "sEmptyTable": "Ningún dato disponible en esta tabla",
                        "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                        "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                        "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                        "sInfoPostFix": "",
                        "sSearch": "Buscar:",
                        "sUrl": "",
                        "sInfoThousands": ",",
                        "sLoadingRecords": "Cargando...",
                        "oPaginate": {
                            "sFirst": "Primero",
                            "sLast": "Último",
                            "sNext": "Siguiente",
                            "sPrevious": "Anterior"
                        },
                        "oAria": {
                            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                        }
                    }
                });
            });
        </script>
    </body>
</html>